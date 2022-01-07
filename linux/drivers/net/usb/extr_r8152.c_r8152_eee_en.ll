; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_eee_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_eee_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_EEE_CR = common dso_local global i32 0, align 4
@OCP_EEE_CONFIG1 = common dso_local global i32 0, align 4
@sd_rise_time_mask = common dso_local global i32 0, align 4
@OCP_EEE_CONFIG2 = common dso_local global i32 0, align 4
@OCP_EEE_CONFIG3 = common dso_local global i32 0, align 4
@fast_snr_mask = common dso_local global i32 0, align 4
@EEE_RX_EN = common dso_local global i32 0, align 4
@EEE_TX_EN = common dso_local global i32 0, align 4
@EEE_10_CAP = common dso_local global i32 0, align 4
@EEE_NWAY_EN = common dso_local global i32 0, align 4
@TX_QUIET_EN = common dso_local global i32 0, align 4
@RX_QUIET_EN = common dso_local global i32 0, align 4
@RG_DACQUIET_EN = common dso_local global i32 0, align 4
@RG_LDVQUIET_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8152_eee_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8152_eee_en(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.r8152*, %struct.r8152** %3, align 8
  %10 = load i32, i32* @MCU_TYPE_PLA, align 4
  %11 = load i32, i32* @PLA_EEE_CR, align 4
  %12 = call i32 @ocp_read_word(%struct.r8152* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.r8152*, %struct.r8152** %3, align 8
  %14 = load i32, i32* @OCP_EEE_CONFIG1, align 4
  %15 = call i32 @ocp_reg_read(%struct.r8152* %13, i32 %14)
  %16 = load i32, i32* @sd_rise_time_mask, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.r8152*, %struct.r8152** %3, align 8
  %20 = load i32, i32* @OCP_EEE_CONFIG2, align 4
  %21 = call i32 @ocp_reg_read(%struct.r8152* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.r8152*, %struct.r8152** %3, align 8
  %23 = load i32, i32* @OCP_EEE_CONFIG3, align 4
  %24 = call i32 @ocp_reg_read(%struct.r8152* %22, i32 %23)
  %25 = load i32, i32* @fast_snr_mask, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %2
  %31 = load i32, i32* @EEE_RX_EN, align 4
  %32 = load i32, i32* @EEE_TX_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @EEE_10_CAP, align 4
  %37 = load i32, i32* @EEE_NWAY_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TX_QUIET_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RX_QUIET_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = call i32 @sd_rise_time(i32 1)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @RG_DACQUIET_EN, align 4
  %49 = load i32, i32* @RG_LDVQUIET_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = call i32 @fast_snr(i32 42)
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %85

56:                                               ; preds = %2
  %57 = load i32, i32* @EEE_RX_EN, align 4
  %58 = load i32, i32* @EEE_TX_EN, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @EEE_10_CAP, align 4
  %64 = load i32, i32* @EEE_NWAY_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @TX_QUIET_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RX_QUIET_EN, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = call i32 @sd_rise_time(i32 7)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @RG_DACQUIET_EN, align 4
  %77 = load i32, i32* @RG_LDVQUIET_EN, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = call i32 @fast_snr(i32 511)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %56, %30
  %86 = load %struct.r8152*, %struct.r8152** %3, align 8
  %87 = load i32, i32* @MCU_TYPE_PLA, align 4
  %88 = load i32, i32* @PLA_EEE_CR, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ocp_write_word(%struct.r8152* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.r8152*, %struct.r8152** %3, align 8
  %92 = load i32, i32* @OCP_EEE_CONFIG1, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ocp_reg_write(%struct.r8152* %91, i32 %92, i32 %93)
  %95 = load %struct.r8152*, %struct.r8152** %3, align 8
  %96 = load i32, i32* @OCP_EEE_CONFIG2, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ocp_reg_write(%struct.r8152* %95, i32 %96, i32 %97)
  %99 = load %struct.r8152*, %struct.r8152** %3, align 8
  %100 = load i32, i32* @OCP_EEE_CONFIG3, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @ocp_reg_write(%struct.r8152* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @sd_rise_time(i32) #1

declare dso_local i32 @fast_snr(i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
