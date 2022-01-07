; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ioc.c_mantis_gpio_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ioc.c_mantis_gpio_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set Bit <%d> to <%d>\00", align 1
@MANTIS_GPIF_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"GPIO Value <%02x>\00", align 1
@MANTIS_GPIF_DOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_gpio_set_bits(%struct.mantis_pci* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mantis_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @MANTIS_DEBUG, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 (i32, i32, i8*, i32, ...) @dprintk(i32 %8, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10)
  %12 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %13 = call i32 @mmread(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %22 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %30 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %23, %16
  %32 = load i32, i32* @MANTIS_DEBUG, align 4
  %33 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %34 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i32, i8*, i32, ...) @dprintk(i32 %32, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %38 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MANTIS_GPIF_ADDR, align 4
  %41 = call i32 @mmwrite(i32 %39, i32 %40)
  %42 = load i32, i32* @MANTIS_GPIF_DOUT, align 4
  %43 = call i32 @mmwrite(i32 0, i32 %42)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
