; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_format_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_format_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_fw = type { i32, i32, %struct.rtl_fw_phy_action, %struct.firmware* }
%struct.rtl_fw_phy_action = type { i64, i32* }
%struct.firmware = type { i64*, i64 }
%struct.fw_info = type { i32, i32, i32, i32 }

@FW_OPCODE_SIZE = common dso_local global i64 0, align 8
@RTL_VER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_fw*)* @rtl_fw_format_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_fw_format_ok(%struct.rtl_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl_fw*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.fw_info*, align 8
  %6 = alloca %struct.rtl_fw_phy_action*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtl_fw* %0, %struct.rtl_fw** %3, align 8
  %11 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %11, i32 0, i32 3
  %13 = load %struct.firmware*, %struct.firmware** %12, align 8
  store %struct.firmware* %13, %struct.firmware** %4, align 8
  %14 = load %struct.firmware*, %struct.firmware** %4, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = bitcast i64* %16 to %struct.fw_info*
  store %struct.fw_info* %17, %struct.fw_info** %5, align 8
  %18 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %18, i32 0, i32 2
  store %struct.rtl_fw_phy_action* %19, %struct.rtl_fw_phy_action** %6, align 8
  %20 = load %struct.firmware*, %struct.firmware** %4, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

26:                                               ; preds = %1
  %27 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %28 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  %32 = load %struct.firmware*, %struct.firmware** %4, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %137

37:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.firmware*, %struct.firmware** %4, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %38

56:                                               ; preds = %38
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %137

60:                                               ; preds = %56
  %61 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %62 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le32_to_cpu(i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.firmware*, %struct.firmware** %4, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %137

71:                                               ; preds = %60
  %72 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %73 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le32_to_cpu(i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.firmware*, %struct.firmware** %4, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %83 = udiv i64 %81, %82
  %84 = icmp ugt i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %137

86:                                               ; preds = %71
  %87 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %88 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %91 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RTL_VER_SIZE, align 4
  %94 = call i32 @strscpy(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.firmware*, %struct.firmware** %4, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = bitcast i64* %99 to i32*
  %101 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %102 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %105 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %136

106:                                              ; preds = %26
  %107 = load %struct.firmware*, %struct.firmware** %4, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %111 = urem i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %137

114:                                              ; preds = %106
  %115 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %116 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %119 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RTL_VER_SIZE, align 4
  %122 = call i32 @strscpy(i32 %117, i32 %120, i32 %121)
  %123 = load %struct.firmware*, %struct.firmware** %4, align 8
  %124 = getelementptr inbounds %struct.firmware, %struct.firmware* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = bitcast i64* %125 to i32*
  %127 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %128 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  %129 = load %struct.firmware*, %struct.firmware** %4, align 8
  %130 = getelementptr inbounds %struct.firmware, %struct.firmware* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %133 = udiv i64 %131, %132
  %134 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %6, align 8
  %135 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %114, %86
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %113, %85, %70, %59, %36, %25
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
