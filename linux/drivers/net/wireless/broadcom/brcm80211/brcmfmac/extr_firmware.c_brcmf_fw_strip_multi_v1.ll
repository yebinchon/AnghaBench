; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_strip_multi_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_strip_multi_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i32, i64*, i32 }

@__const.brcmf_fw_strip_multi_v1.pci_path = private unnamed_addr constant [9 x i8] c"=pci/?/?\00", align 1
@__const.brcmf_fw_strip_multi_v1.pcie_path = private unnamed_addr constant [10 x i8] c"=pcie/?/?\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@BRCMF_FW_NVRAM_DEVPATH_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"=pci/%d/%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"=pcie/%d/%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"devpath\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvram_parser*, i32, i32)* @brcmf_fw_strip_multi_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_fw_strip_multi_v1(%struct.nvram_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvram_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca [10 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.nvram_parser* %0, %struct.nvram_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.brcmf_fw_strip_multi_v1.pci_path, i32 0, i32 0), i64 9, i1 false)
  %17 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.brcmf_fw_strip_multi_v1.pcie_path, i32 0, i32 0), i64 10, i1 false)
  %18 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %19 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = add nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64* @kzalloc(i32 %25, i32 %26)
  store i64* %27, i64** %14, align 8
  %28 = load i64*, i64** %14, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %218

31:                                               ; preds = %3
  %32 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %33 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @BRCMF_FW_NVRAM_DEVPATH_LEN, align 8
  %37 = add i64 %36, 6
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %218

40:                                               ; preds = %31
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @snprintf(i8* %41, i32 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %8, align 8
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @snprintf(i8* %47, i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %10, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %115, %40
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %56 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @BRCMF_FW_NVRAM_DEVPATH_LEN, align 8
  %60 = sub i64 %58, %59
  %61 = icmp ult i64 %54, %60
  br i1 %61, label %62, label %118

62:                                               ; preds = %53
  %63 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %64 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = call i64 @strncmp(i64* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %62
  %71 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %72 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 8
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @strncmp(i64* %76, i8* %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %70
  %83 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %84 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 8
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %90 = load i64, i64* %10, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i64 @strncmp(i64* %88, i8* %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %82, %70
  %95 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %96 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 7
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 48
  store i64 %102, i64* %15, align 8
  store i32 1, i32* %13, align 4
  br label %118

103:                                              ; preds = %82, %62
  br label %104

104:                                              ; preds = %112, %103
  %105 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %106 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %104

115:                                              ; preds = %104
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %53

118:                                              ; preds = %94, %53
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %218

122:                                              ; preds = %118
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %123

123:                                              ; preds = %203, %122
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %126 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %124, %128
  br i1 %129, label %130, label %206

130:                                              ; preds = %123
  %131 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %132 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %136, 48
  %138 = load i64, i64* %15, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %191

140:                                              ; preds = %130
  %141 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %142 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add i64 %144, 1
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 58
  br i1 %148, label %149, label %191

149:                                              ; preds = %140
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 2
  store i64 %151, i64* %11, align 8
  %152 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %153 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = call i64 @strncmp(i64* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %161 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %160, i32 0, i32 2
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %149
  br label %163

163:                                              ; preds = %171, %162
  %164 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %165 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %163
  %172 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %173 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* %11, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %14, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 %177, i64* %180, align 8
  %181 = load i64, i64* %11, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %11, align 8
  %183 = load i64, i64* %12, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %12, align 8
  br label %163

185:                                              ; preds = %163
  %186 = load i64*, i64** %14, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  store i64 0, i64* %188, align 8
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %12, align 8
  br label %191

191:                                              ; preds = %185, %140, %130
  br label %192

192:                                              ; preds = %200, %191
  %193 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %194 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %11, align 8
  br label %192

203:                                              ; preds = %192
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %123

206:                                              ; preds = %123
  %207 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %208 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = call i32 @kfree(i64* %209)
  %211 = load i64*, i64** %14, align 8
  %212 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %213 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %212, i32 0, i32 1
  store i64* %211, i64** %213, align 8
  %214 = load i64, i64* %12, align 8
  %215 = trunc i64 %214 to i32
  %216 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %217 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %223

218:                                              ; preds = %121, %39, %30
  %219 = load i64*, i64** %14, align 8
  %220 = call i32 @kfree(i64* %219)
  %221 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %222 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  br label %223

223:                                              ; preds = %218, %206
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64* @kzalloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i64*, i8*, i32) #2

declare dso_local i32 @kfree(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
