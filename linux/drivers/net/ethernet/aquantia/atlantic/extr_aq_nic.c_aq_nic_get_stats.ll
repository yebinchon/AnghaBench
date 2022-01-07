; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, %struct.aq_vec_s**, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.aq_vec_s = type { i32 }
%struct.TYPE_4__ = type { %struct.aq_stats_s* (i32)* }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_nic_get_stats(%struct.aq_nic_s* %0, i64* %1) #0 {
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aq_vec_s*, align 8
  %8 = alloca %struct.aq_stats_s*, align 8
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %7, align 8
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %10 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %9, i32 0, i32 5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %17 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %16, i32 0, i32 4
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %20 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %19, i32 0, i32 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %25 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26)
  %28 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %29 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %28, i32 0, i32 4
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %33 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.aq_stats_s* (i32)*, %struct.aq_stats_s* (i32)** %35, align 8
  %37 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %38 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.aq_stats_s* %36(i32 %39)
  store %struct.aq_stats_s* %40, %struct.aq_stats_s** %8, align 8
  %41 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %42 = icmp ne %struct.aq_stats_s* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %293

44:                                               ; preds = %31
  %45 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %46 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %45, i32 0, i32 17
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %49 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %48, i32 0, i32 16
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %53 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %52, i32 0, i32 15
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i64*, i64** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  %60 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %61 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %60, i32 0, i32 17
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 %62, i64* %67, align 8
  %68 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %69 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %68, i32 0, i32 16
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  store i64 %70, i64* %75, align 8
  %76 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %77 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %76, i32 0, i32 15
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 %78, i64* %83, align 8
  %84 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %85 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %84, i32 0, i32 14
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %86, i64* %91, align 8
  %92 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %93 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %92, i32 0, i32 13
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %96 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %95, i32 0, i32 12
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %100 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load i64*, i64** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  store i64 %102, i64* %107, align 8
  %108 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %109 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %108, i32 0, i32 13
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  store i64 %110, i64* %115, align 8
  %116 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %117 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %116, i32 0, i32 12
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  store i64 %118, i64* %123, align 8
  %124 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %125 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %5, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  store i64 %126, i64* %131, align 8
  %132 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %133 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %5, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %141 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  %148 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %149 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  store i64 %150, i64* %155, align 8
  %156 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %157 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %5, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  store i64 %158, i64* %163, align 8
  %164 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %165 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  store i64 %166, i64* %171, align 8
  %172 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %173 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = load i64*, i64** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %5, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  store i64 %174, i64* %179, align 8
  %180 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %181 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %184 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %188 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %186, %189
  %191 = load i64*, i64** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %5, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %191, i64 %194
  store i64 %190, i64* %195, align 8
  %196 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %197 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %200 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %198, %201
  %203 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %204 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load i64*, i64** %4, align 8
  %208 = load i32, i32* %5, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %5, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  store i64 %206, i64* %211, align 8
  %212 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %213 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %5, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %215, i64 %218
  store i64 %214, i64* %219, align 8
  %220 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %221 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %4, align 8
  %224 = load i32, i32* %5, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %5, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %223, i64 %226
  store i64 %222, i64* %227, align 8
  %228 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %229 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %4, align 8
  %232 = load i32, i32* %5, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %5, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %231, i64 %234
  store i64 %230, i64* %235, align 8
  %236 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %237 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64*, i64** %4, align 8
  %240 = load i32, i32* %5, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %5, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %239, i64 %242
  store i64 %238, i64* %243, align 8
  %244 = load %struct.aq_stats_s*, %struct.aq_stats_s** %8, align 8
  %245 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64*, i64** %4, align 8
  %248 = load i32, i32* %5, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %5, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %247, i64 %250
  store i64 %246, i64* %251, align 8
  %252 = load i32, i32* %5, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load i64*, i64** %4, align 8
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  store i64* %257, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %258 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %259 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %258, i32 0, i32 1
  %260 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %259, align 8
  %261 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %260, i64 0
  %262 = load %struct.aq_vec_s*, %struct.aq_vec_s** %261, align 8
  store %struct.aq_vec_s* %262, %struct.aq_vec_s** %7, align 8
  br label %263

263:                                              ; preds = %282, %44
  %264 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %265 = icmp ne %struct.aq_vec_s* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %268 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = icmp ugt i32 %269, %270
  br label %272

272:                                              ; preds = %266, %263
  %273 = phi i1 [ false, %263 ], [ %271, %266 ]
  br i1 %273, label %274, label %292

274:                                              ; preds = %272
  %275 = load i32, i32* %6, align 4
  %276 = load i64*, i64** %4, align 8
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  store i64* %278, i64** %4, align 8
  %279 = load %struct.aq_vec_s*, %struct.aq_vec_s** %7, align 8
  %280 = load i64*, i64** %4, align 8
  %281 = call i32 @aq_vec_get_sw_stats(%struct.aq_vec_s* %279, i64* %280, i32* %6)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %5, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %5, align 4
  %285 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %286 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %285, i32 0, i32 1
  %287 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %287, i64 %289
  %291 = load %struct.aq_vec_s*, %struct.aq_vec_s** %290, align 8
  store %struct.aq_vec_s* %291, %struct.aq_vec_s** %7, align 8
  br label %263

292:                                              ; preds = %272
  br label %293

293:                                              ; preds = %292, %43
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @aq_vec_get_sw_stats(%struct.aq_vec_s*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
