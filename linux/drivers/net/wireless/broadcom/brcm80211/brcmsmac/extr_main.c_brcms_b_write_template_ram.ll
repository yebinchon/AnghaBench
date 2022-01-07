; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_write_template_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_write_template_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@tplatewrptr = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_BIGEND = common dso_local global i32 0, align 4
@tplatewrdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_write_template_ram(%struct.brcms_hardware* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bcma_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 1
  %16 = load %struct.bcma_device*, %struct.bcma_device** %15, align 8
  store %struct.bcma_device* %16, %struct.bcma_device** %9, align 8
  %17 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %19 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @brcms_dbg_info(%struct.bcma_device* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %23 = load i32, i32* @tplatewrptr, align 4
  %24 = call i32 @D11REGOFFS(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bcma_write32(%struct.bcma_device* %22, i32 %24, i32 %25)
  %27 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %28 = load i32, i32* @maccontrol, align 4
  %29 = call i32 @D11REGOFFS(i32 %28)
  %30 = call i32 @bcma_read32(%struct.bcma_device* %27, i32 %29)
  %31 = load i32, i32* @MCTL_BIGEND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %51, %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @memcpy(i32* %10, i8* %39, i32 4)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cpu_to_be32(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %53 = load i32, i32* @tplatewrdata, align 4
  %54 = call i32 @D11REGOFFS(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @bcma_write32(%struct.bcma_device* %52, i32 %54, i32 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %35

65:                                               ; preds = %35
  ret void
}

declare dso_local i32 @brcms_dbg_info(%struct.bcma_device*, i8*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
