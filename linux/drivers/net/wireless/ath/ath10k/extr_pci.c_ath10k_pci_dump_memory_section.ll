; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_section.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_mem_region = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ath10k_mem_section* }
%struct.ath10k_mem_section = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"incorrect memdump region 0x%x with section start address 0x%x.\0A\00", align 1
@ATH10K_MAGIC_NOT_COPIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"incorrect ramdump format with start address 0x%x and stop address 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"next ramdump section 0x%x is smaller than current end address 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ramdump buffer is too small: %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"failed to read ramdump from section 0x%x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_mem_region*, i32*, i64)* @ath10k_pci_dump_memory_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_dump_memory_section(%struct.ath10k* %0, %struct.ath10k_mem_region* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_mem_region*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ath10k_mem_section*, align 8
  %11 = alloca %struct.ath10k_mem_section*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ath10k_mem_region* %1, %struct.ath10k_mem_region** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %19 = icmp ne %struct.ath10k_mem_region* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %194

24:                                               ; preds = %20
  %25 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %26 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %27, align 8
  %29 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %28, i64 0
  store %struct.ath10k_mem_section* %29, %struct.ath10k_mem_section** %10, align 8
  %30 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %31 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %34 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %39 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %40 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %43 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 0, i32* %5, align 4
  br label %194

46:                                               ; preds = %24
  %47 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %48 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %51 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 %49, %52
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %63, %46
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* @ATH10K_MAGIC_NOT_COPIED, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %54

66:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %189, %66
  %68 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %69 = icmp ne %struct.ath10k_mem_section* %68, null
  br i1 %69, label %70, label %192

70:                                               ; preds = %67
  %71 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %72 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %75 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %73, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ule i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %82 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %83 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %86 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %81, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  br label %192

89:                                               ; preds = %70
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %7, align 8
  %93 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store %struct.ath10k_mem_section* null, %struct.ath10k_mem_section** %11, align 8
  store i32 0, i32* %14, align 4
  br label %125

98:                                               ; preds = %89
  %99 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %100 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %99, i64 1
  store %struct.ath10k_mem_section* %100, %struct.ath10k_mem_section** %11, align 8
  %101 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %102 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %11, align 8
  %105 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ugt i32 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %110 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %11, align 8
  %111 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %114 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %109, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %115)
  br label %192

117:                                              ; preds = %98
  %118 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %11, align 8
  %119 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %122 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub i32 %120, %123
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %117, %97
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = icmp ult i64 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %134 = load i64, i64* %9, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %192

137:                                              ; preds = %125
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %9, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %9, align 8
  %144 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %145 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %146 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @ath10k_pci_diag_read_mem(%struct.ath10k* %144, i32 %147, i32* %148, i32 %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %137
  %154 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %155 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %10, align 8
  %156 = getelementptr inbounds %struct.ath10k_mem_section, %struct.ath10k_mem_section* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %157, i32 %158)
  br label %192

160:                                              ; preds = %137
  %161 = load i32, i32* %13, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %168

168:                                              ; preds = %177, %160
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load i32, i32* @ATH10K_MAGIC_NOT_COPIED, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %8, align 8
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %168

180:                                              ; preds = %168
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %11, align 8
  %185 = icmp ne %struct.ath10k_mem_section* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  br label %192

187:                                              ; preds = %180
  %188 = load %struct.ath10k_mem_section*, %struct.ath10k_mem_section** %11, align 8
  store %struct.ath10k_mem_section* %188, %struct.ath10k_mem_section** %10, align 8
  br label %189

189:                                              ; preds = %187
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %67

192:                                              ; preds = %186, %153, %132, %108, %80, %67
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %37, %23
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_pci_diag_read_mem(%struct.ath10k*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
