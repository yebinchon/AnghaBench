; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_write_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_hif.c_mantis_hif_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i32, %struct.mantis_pci* }
%struct.mantis_pci = type { i32, i32 }

@MANTIS_GPIF_WRACK = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Adapter(%d) Slot(0): Write ACK timed out !\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Write Acknowledged\00", align 1
@MANTIS_GPIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_SBUF_OPDONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Adapter(%d) Slot(0): Write operation timed out!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"HIF Write success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_ca*)* @mantis_hif_write_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_hif_write_wait(%struct.mantis_ca* %0) #0 {
  %2 = alloca %struct.mantis_ca*, align 8
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %2, align 8
  %7 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %8 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %7, i32 0, i32 1
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %8, align 8
  store %struct.mantis_pci* %9, %struct.mantis_pci** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %11 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %14 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MANTIS_GPIF_WRACK, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @msecs_to_jiffies(i32 500)
  %19 = call i32 @wait_event_timeout(i32 %12, i32 %17, i32 %18)
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @MANTIS_ERROR, align 4
  %25 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %26 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %24, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EREMOTEIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i32, i32* @MANTIS_DEBUG, align 4
  %33 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %32, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @MANTIS_GPIF_WRACK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %37 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %62, %31
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %46 = call i32 @mmread(i32 %45)
  %47 = load i32, i32* @MANTIS_SBUF_OPDONE, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = call i32 @udelay(i32 500)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 100
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i32, i32* @MANTIS_ERROR, align 4
  %56 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %57 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %55, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %44
  br label %40

63:                                               ; preds = %54, %40
  %64 = load i32, i32* @MANTIS_DEBUG, align 4
  %65 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %64, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
