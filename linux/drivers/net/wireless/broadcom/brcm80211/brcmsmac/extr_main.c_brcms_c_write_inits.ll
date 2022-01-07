; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_write_inits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_write_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }
%struct.d11init = type { i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, %struct.d11init*)* @brcms_c_write_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_write_inits(%struct.brcms_hardware* %0, %struct.d11init* %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca %struct.d11init*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store %struct.d11init* %1, %struct.d11init** %4, align 8
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 1
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %5, align 8
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 1
  %15 = load %struct.bcma_device*, %struct.bcma_device** %14, align 8
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @brcms_dbg_info(%struct.bcma_device* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %70, %2
  %21 = load %struct.d11init*, %struct.d11init** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.d11init, %struct.d11init* %21, i64 %23
  %25 = getelementptr inbounds %struct.d11init, %struct.d11init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @cpu_to_le16(i32 65535)
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %20
  %30 = load %struct.d11init*, %struct.d11init** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.d11init, %struct.d11init* %30, i64 %32
  %34 = getelementptr inbounds %struct.d11init, %struct.d11init* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @le16_to_cpu(i64 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.d11init*, %struct.d11init** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.d11init, %struct.d11init* %38, i64 %40
  %42 = getelementptr inbounds %struct.d11init, %struct.d11init* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @le16_to_cpu(i64 %43)
  store i8* %44, i8** %7, align 8
  %45 = load %struct.d11init*, %struct.d11init** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.d11init, %struct.d11init* %45, i64 %47
  %49 = getelementptr inbounds %struct.d11init, %struct.d11init* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %29
  %55 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @bcma_write16(%struct.bcma_device* %55, i8* %56, i32 %57)
  br label %69

59:                                               ; preds = %29
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @bcma_write32(%struct.bcma_device* %63, i8* %64, i32 %65)
  br label %68

67:                                               ; preds = %59
  br label %73

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %20

73:                                               ; preds = %67, %20
  ret void
}

declare dso_local i32 @brcms_dbg_info(%struct.bcma_device*, i8*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bcma_write16(%struct.bcma_device*, i8*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
