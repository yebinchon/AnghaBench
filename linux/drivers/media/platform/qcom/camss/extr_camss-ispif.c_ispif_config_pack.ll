; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_config_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_config_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i64 }

@MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y10_2X8_PADHI_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i64, i32, i32, i32, i32)* @ispif_config_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_config_pack(%struct.ispif_device* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ispif_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ispif_device* %0, %struct.ispif_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @MEDIA_BUS_FMT_Y10_2X8_PADHI_LE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %71

23:                                               ; preds = %18, %6
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %55 [
    i32 130, label %25
    i32 129, label %35
    i32 128, label %45
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(i32 %29, i32 0)
  store i64 %30, i64* %13, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(i32 %32, i32 0)
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %56

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(i32 %39, i32 1)
  store i64 %40, i64* %13, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(i32 %42, i32 1)
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %56

45:                                               ; preds = %23
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(i32 %49, i32 2)
  store i64 %50, i64* %13, align 8
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(i32 %52, i32 2)
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %56

55:                                               ; preds = %23
  br label %71

56:                                               ; preds = %54, %44, %34
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0_CID_c_PLAIN(i32 %60)
  store i64 %61, i64* %14, align 8
  br label %63

62:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.ispif_device*, %struct.ispif_device** %7, align 8
  %66 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %63, %55, %22
  ret void
}

declare dso_local i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(i32, i32) #1

declare dso_local i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(i32, i32) #1

declare dso_local i64 @ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0_CID_c_PLAIN(i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
