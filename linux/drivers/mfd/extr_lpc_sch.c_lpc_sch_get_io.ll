; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_get_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_get_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i16, i16, i32 }

@LPC_NO_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Decode of the %s I/O range disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"I/O space for %s uninitialized\0A\00", align 1
@LPC_SKIP_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*, %struct.resource*, i32)* @lpc_sch_get_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_sch_get_io(%struct.pci_dev* %0, i32 %1, i8* %2, %struct.resource* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.resource* %3, %struct.resource** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @LPC_NO_RESOURCE, align 4
  store i32 %17, i32* %6, align 4
  br label %58

18:                                               ; preds = %5
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %19, i32 %20, i32* %12)
  store i16 0, i16* %13, align 2
  %22 = load i32, i32* %12, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %12, align 4
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %13, align 2
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i16, i16* %13, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @LPC_SKIP_RESOURCE, align 4
  store i32 %42, i32* %6, align 4
  br label %58

43:                                               ; preds = %33
  %44 = load i16, i16* %13, align 2
  %45 = load %struct.resource*, %struct.resource** %10, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  store i16 %44, i16* %46, align 4
  %47 = load i16, i16* %13, align 2
  %48 = zext i16 %47 to i32
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = trunc i32 %51 to i16
  %53 = load %struct.resource*, %struct.resource** %10, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i16 %52, i16* %54, align 2
  %55 = load i32, i32* @IORESOURCE_IO, align 4
  %56 = load %struct.resource*, %struct.resource** %10, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %43, %37, %16
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
