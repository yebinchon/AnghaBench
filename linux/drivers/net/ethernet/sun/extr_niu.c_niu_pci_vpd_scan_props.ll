; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_scan_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_scan_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32, i32* }

@probe = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VPD_SCAN: start[%x] end[%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@NIU_VPD_MODEL_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"board-model\00", align 1
@NIU_VPD_BD_MODEL_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@NIU_VPD_VERSION_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"num-mac-addresses\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"phy-type\00", align 1
@NIU_VPD_PHY_TYPE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Property '%s' length (%d) is too long\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"VPD_SCAN: Reading in property [%s] len[%d]\0A\00", align 1
@FOUND_MASK_ALL = common dso_local global i32 0, align 4
@FOUND_MASK_BMODEL = common dso_local global i32 0, align 4
@FOUND_MASK_MAC = common dso_local global i32 0, align 4
@FOUND_MASK_MODEL = common dso_local global i32 0, align 4
@FOUND_MASK_NMAC = common dso_local global i32 0, align 4
@FOUND_MASK_PHY = common dso_local global i32 0, align 4
@FOUND_MASK_VERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i64, i64)* @niu_pci_vpd_scan_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_pci_vpd_scan_props(%struct.niu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.niu*, %struct.niu** %5, align 8
  %18 = load i32, i32* @probe, align 4
  %19 = load i32, i32* @KERN_DEBUG, align 4
  %20 = load %struct.niu*, %struct.niu** %5, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @netif_printk(%struct.niu* %17, i32 %18, i32 %19, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  br label %28

28:                                               ; preds = %201, %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %206

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.niu*, %struct.niu** %5, align 8
  %37 = call i32 @niu_vpd_parse_version(%struct.niu* %36)
  store i32 1, i32* %4, align 4
  br label %207

38:                                               ; preds = %32
  %39 = load %struct.niu*, %struct.niu** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 2
  %42 = call i32 @niu_pci_eeprom_read(%struct.niu* %39, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %207

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 3
  store i64 %50, i64* %6, align 8
  %51 = load %struct.niu*, %struct.niu** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 4
  %54 = call i32 @niu_pci_eeprom_read(%struct.niu* %51, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %207

59:                                               ; preds = %47
  %60 = load %struct.niu*, %struct.niu** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 5
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %64 = call i32 @niu_pci_vpd_get_propname(%struct.niu* %60, i64 %62, i8* %63, i32 64)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %207

69:                                               ; preds = %59
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load %struct.niu*, %struct.niu** %5, align 8
  %75 = getelementptr inbounds %struct.niu, %struct.niu* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %13, align 8
  %78 = load i32, i32* @NIU_VPD_MODEL_MAX, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %144

81:                                               ; preds = %69
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load %struct.niu*, %struct.niu** %5, align 8
  %87 = getelementptr inbounds %struct.niu, %struct.niu* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* @NIU_VPD_BD_MODEL_MAX, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, 2
  store i32 %92, i32* %8, align 4
  br label %143

93:                                               ; preds = %81
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load %struct.niu*, %struct.niu** %5, align 8
  %99 = getelementptr inbounds %struct.niu, %struct.niu* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = load i32, i32* @NIU_VPD_VERSION_MAX, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, 4
  store i32 %104, i32* %8, align 4
  br label %142

105:                                              ; preds = %93
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load %struct.niu*, %struct.niu** %5, align 8
  %111 = getelementptr inbounds %struct.niu, %struct.niu* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %13, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, 8
  store i32 %116, i32* %8, align 4
  br label %141

117:                                              ; preds = %105
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load %struct.niu*, %struct.niu** %5, align 8
  %123 = getelementptr inbounds %struct.niu, %struct.niu* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store i32* %124, i32** %13, align 8
  store i32 1, i32* %14, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, 16
  store i32 %126, i32* %8, align 4
  br label %140

127:                                              ; preds = %117
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load %struct.niu*, %struct.niu** %5, align 8
  %133 = getelementptr inbounds %struct.niu, %struct.niu* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %13, align 8
  %136 = load i32, i32* @NIU_VPD_PHY_TYPE_MAX, align 4
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, 32
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %131, %127
  br label %140

140:                                              ; preds = %139, %121
  br label %141

141:                                              ; preds = %140, %109
  br label %142

142:                                              ; preds = %141, %97
  br label %143

143:                                              ; preds = %142, %85
  br label %144

144:                                              ; preds = %143, %73
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load %struct.niu*, %struct.niu** %5, align 8
  %153 = getelementptr inbounds %struct.niu, %struct.niu* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %155, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %207

160:                                              ; preds = %147, %144
  %161 = load i32*, i32** %13, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %201

163:                                              ; preds = %160
  %164 = load i64, i64* %6, align 8
  %165 = add nsw i64 %164, 5
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  store i64 %168, i64* %15, align 8
  %169 = load %struct.niu*, %struct.niu** %5, align 8
  %170 = load i32, i32* @probe, align 4
  %171 = load i32, i32* @KERN_DEBUG, align 4
  %172 = load %struct.niu*, %struct.niu** %5, align 8
  %173 = getelementptr inbounds %struct.niu, %struct.niu* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @netif_printk(%struct.niu* %169, i32 %170, i32 %171, i32 %174, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %175, i32 %176)
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %197, %163
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load %struct.niu*, %struct.niu** %5, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = call i32 @niu_pci_eeprom_read(%struct.niu* %183, i64 %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i32, i32* %10, align 4
  %193 = load i32*, i32** %13, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %182
  %195 = load i32*, i32** %13, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %13, align 8
  br label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %178

200:                                              ; preds = %178
  br label %201

201:                                              ; preds = %200, %160
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %6, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %6, align 8
  br label %28

206:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %151, %67, %57, %45, %35
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @netif_printk(%struct.niu*, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @niu_vpd_parse_version(%struct.niu*) #1

declare dso_local i32 @niu_pci_eeprom_read(%struct.niu*, i64) #1

declare dso_local i32 @niu_pci_vpd_get_propname(%struct.niu*, i64, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
