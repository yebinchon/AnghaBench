; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_write_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_write_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.rtl_fw = type { i32 (%struct.rtl8169_private.0*, i32)*, i32 (%struct.rtl8169_private.1*, i32)*, i32 (%struct.rtl8169_private.2*, i32, i32)*, i32 (%struct.rtl8169_private.3*, i32, i32)*, %struct.rtl_fw_phy_action }
%struct.rtl8169_private.0 = type opaque
%struct.rtl8169_private.1 = type opaque
%struct.rtl8169_private.2 = type opaque
%struct.rtl8169_private.3 = type opaque
%struct.rtl_fw_phy_action = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_fw_write_firmware(%struct.rtl8169_private* %0, %struct.rtl_fw* %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.rtl_fw*, align 8
  %5 = alloca %struct.rtl_fw_phy_action*, align 8
  %6 = alloca i32 (%struct.rtl8169_private*, i32, i32)*, align 8
  %7 = alloca i32 (%struct.rtl8169_private*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store %struct.rtl_fw* %1, %struct.rtl_fw** %4, align 8
  %15 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %15, i32 0, i32 4
  store %struct.rtl_fw_phy_action* %16, %struct.rtl_fw_phy_action** %5, align 8
  %17 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %17, i32 0, i32 3
  %19 = load i32 (%struct.rtl8169_private.3*, i32, i32)*, i32 (%struct.rtl8169_private.3*, i32, i32)** %18, align 8
  %20 = bitcast i32 (%struct.rtl8169_private.3*, i32, i32)* %19 to i32 (%struct.rtl8169_private*, i32, i32)*
  store i32 (%struct.rtl8169_private*, i32, i32)* %20, i32 (%struct.rtl8169_private*, i32, i32)** %6, align 8
  %21 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %21, i32 0, i32 0
  %23 = load i32 (%struct.rtl8169_private.0*, i32)*, i32 (%struct.rtl8169_private.0*, i32)** %22, align 8
  %24 = bitcast i32 (%struct.rtl8169_private.0*, i32)* %23 to i32 (%struct.rtl8169_private*, i32)*
  store i32 (%struct.rtl8169_private*, i32)* %24, i32 (%struct.rtl8169_private*, i32)** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %148, %2
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %151

31:                                               ; preds = %25
  %32 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 268369920
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 28
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  br label %151

49:                                               ; preds = %31
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %147 [
    i32 132, label %51
    i32 135, label %58
    i32 136, label %62
    i32 140, label %66
    i32 133, label %72
    i32 139, label %98
    i32 129, label %99
    i32 131, label %105
    i32 138, label %113
    i32 137, label %123
    i32 128, label %133
    i32 130, label %139
    i32 134, label %144
  ]

51:                                               ; preds = %49
  %52 = load i32 (%struct.rtl8169_private*, i32)*, i32 (%struct.rtl8169_private*, i32)** %7, align 8
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 %52(%struct.rtl8169_private* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %147

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %147

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %147

66:                                               ; preds = %49
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %147

72:                                               ; preds = %49
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %77 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %76, i32 0, i32 3
  %78 = load i32 (%struct.rtl8169_private.3*, i32, i32)*, i32 (%struct.rtl8169_private.3*, i32, i32)** %77, align 8
  %79 = bitcast i32 (%struct.rtl8169_private.3*, i32, i32)* %78 to i32 (%struct.rtl8169_private*, i32, i32)*
  store i32 (%struct.rtl8169_private*, i32, i32)* %79, i32 (%struct.rtl8169_private*, i32, i32)** %6, align 8
  %80 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %80, i32 0, i32 0
  %82 = load i32 (%struct.rtl8169_private.0*, i32)*, i32 (%struct.rtl8169_private.0*, i32)** %81, align 8
  %83 = bitcast i32 (%struct.rtl8169_private.0*, i32)* %82 to i32 (%struct.rtl8169_private*, i32)*
  store i32 (%struct.rtl8169_private*, i32)* %83, i32 (%struct.rtl8169_private*, i32)** %7, align 8
  br label %97

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %89 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %88, i32 0, i32 2
  %90 = load i32 (%struct.rtl8169_private.2*, i32, i32)*, i32 (%struct.rtl8169_private.2*, i32, i32)** %89, align 8
  %91 = bitcast i32 (%struct.rtl8169_private.2*, i32, i32)* %90 to i32 (%struct.rtl8169_private*, i32, i32)*
  store i32 (%struct.rtl8169_private*, i32, i32)* %91, i32 (%struct.rtl8169_private*, i32, i32)** %6, align 8
  %92 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %93 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %92, i32 0, i32 1
  %94 = load i32 (%struct.rtl8169_private.1*, i32)*, i32 (%struct.rtl8169_private.1*, i32)** %93, align 8
  %95 = bitcast i32 (%struct.rtl8169_private.1*, i32)* %94 to i32 (%struct.rtl8169_private*, i32)*
  store i32 (%struct.rtl8169_private*, i32)* %95, i32 (%struct.rtl8169_private*, i32)** %7, align 8
  br label %96

96:                                               ; preds = %87, %84
  br label %97

97:                                               ; preds = %96, %75
  br label %147

98:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %147

99:                                               ; preds = %49
  %100 = load i32 (%struct.rtl8169_private*, i32, i32)*, i32 (%struct.rtl8169_private*, i32, i32)** %6, align 8
  %101 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 %100(%struct.rtl8169_private* %101, i32 %102, i32 %103)
  br label %147

105:                                              ; preds = %49
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %109, %105
  br label %147

113:                                              ; preds = %49
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %117, %113
  br label %147

123:                                              ; preds = %49
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %127, %123
  br label %147

133:                                              ; preds = %49
  %134 = load i32 (%struct.rtl8169_private*, i32, i32)*, i32 (%struct.rtl8169_private*, i32, i32)** %6, align 8
  %135 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 %134(%struct.rtl8169_private* %135, i32 %136, i32 %137)
  br label %147

139:                                              ; preds = %49
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %10, align 8
  br label %147

144:                                              ; preds = %49
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @mdelay(i32 %145)
  br label %147

147:                                              ; preds = %49, %144, %139, %133, %132, %122, %112, %99, %98, %97, %66, %62, %58, %51
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %25

151:                                              ; preds = %48, %25
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
