; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.adapter = type { i32 }

@EEPROM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEPROMPFSIZE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.adapter* @netdev2adap(%struct.net_device* %15)
  store %struct.adapter* %16, %struct.adapter** %13, align 8
  %17 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %18 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EEPROM_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %173

25:                                               ; preds = %3
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, -4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 3
  %37 = add nsw i32 %32, %36
  %38 = add nsw i32 %37, 3
  %39 = and i32 %38, -4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.adapter*, %struct.adapter** %13, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %25
  %45 = load %struct.adapter*, %struct.adapter** %13, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EEPROMPFSIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 1024, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @EEPROMPFSIZE, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %44
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %173

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %75 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %126

78:                                               ; preds = %72, %66
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @kvzalloc(i32 %79, i32 %80)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %173

87:                                               ; preds = %78
  %88 = load %struct.adapter*, %struct.adapter** %13, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @eeprom_rd_phys(%struct.adapter* %88, i32 %89, i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.adapter*, %struct.adapter** %13, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = call i32 @eeprom_rd_phys(%struct.adapter* %98, i32 %102, i32* %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %97, %94, %87
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %164

113:                                              ; preds = %109
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %116 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %123 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i32* %120, i32* %121, i32 %124)
  br label %128

126:                                              ; preds = %72
  %127 = load i32*, i32** %7, align 8
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %126, %113
  %129 = load %struct.adapter*, %struct.adapter** %13, align 8
  %130 = call i32 @t4_seeprom_wp(%struct.adapter* %129, i32 0)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %164

134:                                              ; preds = %128
  %135 = load i32*, i32** %8, align 8
  store i32* %135, i32** %12, align 8
  br label %136

136:                                              ; preds = %152, %134
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i1 [ false, %136 ], [ %141, %139 ]
  br i1 %143, label %144, label %157

144:                                              ; preds = %142
  %145 = load %struct.adapter*, %struct.adapter** %13, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @eeprom_wr_phys(%struct.adapter* %145, i32 %146, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, 4
  store i32 %154, i32* %11, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %12, align 8
  br label %136

157:                                              ; preds = %142
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load %struct.adapter*, %struct.adapter** %13, align 8
  %162 = call i32 @t4_seeprom_wp(%struct.adapter* %161, i32 1)
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %133, %112
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = icmp ne i32* %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @kvfree(i32* %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %171, %84, %62, %22
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @eeprom_rd_phys(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t4_seeprom_wp(%struct.adapter*, i32) #1

declare dso_local i32 @eeprom_wr_phys(%struct.adapter*, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
