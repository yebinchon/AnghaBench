; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_eblk_passes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_eblk_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, i64, i64, %struct.mtd_info* }
%struct.mtd_info = type { i32, i32 }
%struct.swap_eb = type { i32 }
%struct.mtd_oob_ops = type { i32, i32, i64, i64, i64, i32 }

@MTD_OPS_AUTO_OOB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EBLOCK_READERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_eblk_passes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_eblk_passes(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mtd_oob_ops, align 8
  %17 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  %18 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %18, i32 0, i32 3
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %6, align 8
  %21 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %14, align 8
  %25 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %15, align 8
  %29 = load i32, i32* @MTD_OPS_AUTO_OOB, align 4
  %30 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  %44 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %45 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %49 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %50 = call i32 @mtdswap_eb_offset(%struct.mtdswap_dev* %48, %struct.swap_eb* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul i32 %53, %54
  %56 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = udiv i32 %55, %58
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %185, %2
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %63, label %188

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %102, %63
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %70, %71
  %73 = call i32 @mtdswap_test_patt(i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %75 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memset(i64 %76, i32 %77, i32 %80)
  %82 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %83 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %87 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memset(i64 %84, i32 %85, i32 %88)
  %90 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @mtd_write_oob(%struct.mtd_info* %90, i32 %91, %struct.mtd_oob_ops* %16)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %69
  br label %195

96:                                               ; preds = %69
  %97 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %65

105:                                              ; preds = %65
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %174, %105
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %177

111:                                              ; preds = %107
  %112 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @mtd_read_oob(%struct.mtd_info* %112, i32 %113, %struct.mtd_oob_ops* %16)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %195

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %119, %120
  %122 = call i32 @mtdswap_test_patt(i32 %121)
  store i32 %122, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %142, %118
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %127 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = udiv i64 %129, 4
  %131 = icmp ult i64 %125, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %195

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %123

145:                                              ; preds = %123
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %165, %145
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %149 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i32, i32* %10, align 4
  %160 = trunc i32 %159 to i8
  %161 = zext i8 %160 to i32
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %195

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %146

168:                                              ; preds = %146
  %169 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %170 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %107

177:                                              ; preds = %107
  %178 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %179 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %180 = call i32 @mtdswap_erase_block(%struct.mtdswap_dev* %178, %struct.swap_eb* %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %195

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %60

188:                                              ; preds = %60
  %189 = load i32, i32* @EBLOCK_READERR, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %192 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 4
  store i32 1, i32* %3, align 4
  br label %199

195:                                              ; preds = %183, %163, %140, %117, %95
  %196 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %197 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %198 = call i32 @mtdswap_handle_badblock(%struct.mtdswap_dev* %196, %struct.swap_eb* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %188
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @mtdswap_eb_offset(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_test_patt(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @mtd_write_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @mtdswap_erase_block(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_handle_badblock(%struct.mtdswap_dev*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
