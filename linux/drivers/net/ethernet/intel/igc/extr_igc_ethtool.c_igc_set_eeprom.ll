; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.igc_adapter = type { %struct.igc_hw }
%struct.igc_hw = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.igc_hw.0*, i32, i32, i32*)*, i32 (%struct.igc_hw.1*, i32, i32, i32*)*, i32 (%struct.igc_hw.2*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque
%struct.igc_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@igc_i225 = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @igc_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igc_adapter*, align 8
  %9 = alloca %struct.igc_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.igc_adapter* %18, %struct.igc_adapter** %8, align 8
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %19, i32 0, i32 0
  store %struct.igc_hw* %20, %struct.igc_hw** %9, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %211

28:                                               ; preds = %3
  %29 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %30 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @igc_i225, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %37 = call i32 @igc_get_flash_presence_i225(%struct.igc_hw* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %211

42:                                               ; preds = %35, %28
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %47 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %50 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %48, %52
  %54 = icmp ne i32 %45, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %211

58:                                               ; preds = %42
  %59 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %60 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 1
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32* @kmalloc(i32 %77, i32 %78)
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %58
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %211

85:                                               ; preds = %58
  %86 = load i32*, i32** %14, align 8
  %87 = bitcast i32* %86 to i8*
  store i8* %87, i8** %15, align 8
  %88 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %95 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.igc_hw.0*, i32, i32, i32*)*, i32 (%struct.igc_hw.0*, i32, i32, i32*)** %97, align 8
  %99 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %100 = bitcast %struct.igc_hw* %99 to %struct.igc_hw.0*
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = call i32 %98(%struct.igc_hw.0* %100, i32 %101, i32 1, i32* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %15, align 8
  br label %107

107:                                              ; preds = %93, %85
  %108 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %112 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %107
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %122 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32 (%struct.igc_hw.0*, i32, i32, i32*)*, i32 (%struct.igc_hw.0*, i32, i32, i32*)** %124, align 8
  %126 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %127 = bitcast %struct.igc_hw* %126 to %struct.igc_hw.0*
  %128 = load i32, i32* %12, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = call i32 %125(%struct.igc_hw.0* %127, i32 %128, i32 1, i32* %134)
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %120, %117, %107
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %150, %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @le16_to_cpus(i32* %148)
  br label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %137

153:                                              ; preds = %137
  %154 = load i8*, i8** %15, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %157 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memcpy(i8* %154, i32* %155, i32 %158)
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %178, %153
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %162, %163
  %165 = add nsw i32 %164, 1
  %166 = icmp slt i32 %161, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load i32*, i32** %14, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @cpu_to_le16(i32 %172)
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %160

181:                                              ; preds = %160
  %182 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %183 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i32 (%struct.igc_hw.1*, i32, i32, i32*)*, i32 (%struct.igc_hw.1*, i32, i32, i32*)** %185, align 8
  %187 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %188 = bitcast %struct.igc_hw* %187 to %struct.igc_hw.1*
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %190, %191
  %193 = add nsw i32 %192, 1
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 %186(%struct.igc_hw.1* %188, i32 %189, i32 %193, i32* %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %181
  %199 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %200 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32 (%struct.igc_hw.2*)*, i32 (%struct.igc_hw.2*)** %202, align 8
  %204 = load %struct.igc_hw*, %struct.igc_hw** %9, align 8
  %205 = bitcast %struct.igc_hw* %204 to %struct.igc_hw.2*
  %206 = call i32 %203(%struct.igc_hw.2* %205)
  br label %207

207:                                              ; preds = %198, %181
  %208 = load i32*, i32** %14, align 8
  %209 = call i32 @kfree(i32* %208)
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %207, %82, %55, %39, %25
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igc_get_flash_presence_i225(%struct.igc_hw*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
