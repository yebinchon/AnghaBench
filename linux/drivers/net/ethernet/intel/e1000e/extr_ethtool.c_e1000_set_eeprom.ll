; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_5__*, %struct.e1000_hw }
%struct.TYPE_5__ = type { i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FLAG_READ_ONLY_NVM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVM_CHECKSUM_REG = common dso_local global i32 0, align 4
@e1000_82583 = common dso_local global i64 0, align 8
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82573 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @e1000_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.e1000_adapter* %18, %struct.e1000_adapter** %8, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 2
  store %struct.e1000_hw* %20, %struct.e1000_hw** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %223

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %36, %42
  %44 = icmp ne i32 %31, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %223

48:                                               ; preds = %28
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FLAG_READ_ONLY_NVM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %223

58:                                               ; preds = %48
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %12, align 4
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 1
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32* @kmalloc(i32 %77, i32 %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %58
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %223

85:                                               ; preds = %58
  %86 = load i32*, i32** %10, align 8
  %87 = bitcast i32* %86 to i8*
  store i8* %87, i8** %11, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pm_runtime_get_sync(i32 %91)
  %93 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %94 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %85
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = call i32 @e1000_read_nvm(%struct.e1000_hw* %99, i32 %100, i32 1, i32* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %98, %85
  %107 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %108 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %111 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %106
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = call i32 @e1000_read_nvm(%struct.e1000_hw* %120, i32 %121, i32 1, i32* %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %119, %116, %106
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %214

133:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %147, %133
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub nsw i32 %136, %137
  %139 = add nsw i32 %138, 1
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = call i32 @le16_to_cpus(i32* %145)
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %134

150:                                              ; preds = %134
  %151 = load i8*, i8** %11, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %154 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i8* %151, i32* %152, i32 %155)
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %170, %150
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  %162 = add nsw i32 %161, 1
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i32 @cpu_to_le16s(i32* %168)
  br label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %157

173:                                              ; preds = %157
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @e1000_write_nvm(%struct.e1000_hw* %174, i32 %175, i32 %179, i32* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %173
  br label %214

185:                                              ; preds = %173
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @NVM_CHECKSUM_REG, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %210, label %189

189:                                              ; preds = %185
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @e1000_82583, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %210, label %196

196:                                              ; preds = %189
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %198 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @e1000_82574, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @e1000_82573, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %203, %196, %189, %185
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %212 = call i32 @e1000e_update_nvm_checksum(%struct.e1000_hw* %211)
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %210, %203
  br label %214

214:                                              ; preds = %213, %184, %132
  %215 = load %struct.net_device*, %struct.net_device** %5, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @pm_runtime_put_sync(i32 %218)
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @kfree(i32* %220)
  %222 = load i32, i32* %15, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %214, %82, %55, %45, %25
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

declare dso_local i32 @e1000_write_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000e_update_nvm_checksum(%struct.e1000_hw*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
