; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_load_cpu_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_load_cpu_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.cpu_reg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2_mips_fw_file_entry = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.cpu_reg*, %struct.bnx2_mips_fw_file_entry*)* @load_cpu_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_cpu_fw(%struct.bnx2* %0, %struct.cpu_reg* %1, %struct.bnx2_mips_fw_file_entry* %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca %struct.cpu_reg*, align 8
  %6 = alloca %struct.bnx2_mips_fw_file_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store %struct.cpu_reg* %1, %struct.cpu_reg** %5, align 8
  store %struct.bnx2_mips_fw_file_entry* %2, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %16 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %17 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %18 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %16, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %22 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %12, align 4
  %26 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %27 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %26, i32 %29, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %33 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %34 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %37 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %32, i32 %35, i32 %38)
  %40 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %51 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %10, align 8
  %64 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %65 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %69 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = add nsw i32 %66, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sdiv i32 %78, 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be32_to_cpu(i32 %88)
  %90 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %82, i32 %83, i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %11, align 4
  br label %76

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %3
  %98 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %99 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %104 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @be32_to_cpu(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %109 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be32_to_cpu(i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %10, align 8
  %122 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %123 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %127 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = add nsw i32 %124, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %97
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %149, %133
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sdiv i32 %136, 4
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @be32_to_cpu(i32 %146)
  %148 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %140, i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 4
  store i32 %153, i32* %11, align 4
  br label %134

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154, %97
  %156 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %157 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @be32_to_cpu(i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %162 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be32_to_cpu(i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %167 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @be32_to_cpu(i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %172 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = inttoptr i64 %178 to i32*
  store i32* %179, i32** %10, align 8
  %180 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %181 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %185 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %183, %186
  %188 = add nsw i32 %182, %187
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %207, %191
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sdiv i32 %194, 4
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @be32_to_cpu(i32 %204)
  %206 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %198, i32 %199, i32 %205)
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 4
  store i32 %211, i32* %11, align 4
  br label %192

212:                                              ; preds = %192
  br label %213

213:                                              ; preds = %212, %155
  %214 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %215 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %216 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %214, i32 %217, i32 0)
  %219 = load %struct.bnx2_mips_fw_file_entry*, %struct.bnx2_mips_fw_file_entry** %6, align 8
  %220 = getelementptr inbounds %struct.bnx2_mips_fw_file_entry, %struct.bnx2_mips_fw_file_entry* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @be32_to_cpu(i32 %221)
  store i32 %222, i32* %12, align 4
  %223 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %224 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %225 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %223, i32 %226, i32 %227)
  %229 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %230 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %231 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %229, i32 %232)
  store i32 %233, i32* %12, align 4
  %234 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %235 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %12, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %12, align 4
  %240 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %241 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %242 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %245 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %240, i32 %243, i32 %246)
  %248 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %249 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %250 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %248, i32 %251, i32 %252)
  ret i32 0
}

declare dso_local i32 @bnx2_reg_rd_ind(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reg_wr_ind(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
