; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c___rtl_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c___rtl_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_CRWECR = common dso_local global i32 0, align 4
@CRWECR_CONFIG = common dso_local global i32 0, align 4
@PLA_CONFIG34 = common dso_local global i32 0, align 4
@LINK_ON_WAKE_EN = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@PLA_CONFIG5 = common dso_local global i32 0, align 4
@UWF_EN = common dso_local global i32 0, align 4
@BWF_EN = common dso_local global i32 0, align 4
@MWF_EN = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@CRWECR_NORAML = common dso_local global i32 0, align 4
@PLA_CFG_WOL = common dso_local global i32 0, align 4
@MAGIC_EN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @__rtl_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtl_set_wol(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r8152*, %struct.r8152** %3, align 8
  %7 = load i32, i32* @MCU_TYPE_PLA, align 4
  %8 = load i32, i32* @PLA_CRWECR, align 4
  %9 = load i32, i32* @CRWECR_CONFIG, align 4
  %10 = call i32 @ocp_write_byte(%struct.r8152* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.r8152*, %struct.r8152** %3, align 8
  %12 = load i32, i32* @MCU_TYPE_PLA, align 4
  %13 = load i32, i32* @PLA_CONFIG34, align 4
  %14 = call i32 @ocp_read_word(%struct.r8152* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @LINK_ON_WAKE_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @WAKE_PHY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @LINK_ON_WAKE_EN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.r8152*, %struct.r8152** %3, align 8
  %29 = load i32, i32* @MCU_TYPE_PLA, align 4
  %30 = load i32, i32* @PLA_CONFIG34, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ocp_write_word(%struct.r8152* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.r8152*, %struct.r8152** %3, align 8
  %34 = load i32, i32* @MCU_TYPE_PLA, align 4
  %35 = load i32, i32* @PLA_CONFIG5, align 4
  %36 = call i32 @ocp_read_word(%struct.r8152* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @UWF_EN, align 4
  %38 = load i32, i32* @BWF_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MWF_EN, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @WAKE_UCAST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i32, i32* @UWF_EN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %27
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @WAKE_BCAST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @BWF_EN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @WAKE_MCAST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @MWF_EN, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.r8152*, %struct.r8152** %3, align 8
  %73 = load i32, i32* @MCU_TYPE_PLA, align 4
  %74 = load i32, i32* @PLA_CONFIG5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ocp_write_word(%struct.r8152* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.r8152*, %struct.r8152** %3, align 8
  %78 = load i32, i32* @MCU_TYPE_PLA, align 4
  %79 = load i32, i32* @PLA_CRWECR, align 4
  %80 = load i32, i32* @CRWECR_NORAML, align 4
  %81 = call i32 @ocp_write_byte(%struct.r8152* %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.r8152*, %struct.r8152** %3, align 8
  %83 = load i32, i32* @MCU_TYPE_PLA, align 4
  %84 = load i32, i32* @PLA_CFG_WOL, align 4
  %85 = call i32 @ocp_read_word(%struct.r8152* %82, i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @MAGIC_EN, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @WAKE_MAGIC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %71
  %95 = load i32, i32* @MAGIC_EN, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %71
  %99 = load %struct.r8152*, %struct.r8152** %3, align 8
  %100 = load i32, i32* @MCU_TYPE_PLA, align 4
  %101 = load i32, i32* @PLA_CFG_WOL, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @ocp_write_word(%struct.r8152* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @WAKE_ANY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load %struct.r8152*, %struct.r8152** %3, align 8
  %110 = getelementptr inbounds %struct.r8152, %struct.r8152* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = call i32 @device_set_wakeup_enable(i32* %112, i32 1)
  br label %120

114:                                              ; preds = %98
  %115 = load %struct.r8152*, %struct.r8152** %3, align 8
  %116 = getelementptr inbounds %struct.r8152, %struct.r8152* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @device_set_wakeup_enable(i32* %118, i32 0)
  br label %120

120:                                              ; preds = %114, %108
  ret void
}

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
