; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.memstick_request = type { i32, i32, i8, i8*, i64 }
%struct.mspro_block_data = type { i8, i32, i32, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.scatterlist = type { i32 }

@MEMSTICK_CAP_AUTO_GET_INT = common dso_local global i32 0, align 4
@MEMSTICK_INT_CMDNAK = common dso_local global i8 0, align 1
@MEMSTICK_INT_ERR = common dso_local global i8 0, align 1
@MSPRO_CMD_STOP = common dso_local global i8 0, align 1
@h_mspro_block_default = common dso_local global i32 0, align 4
@MEMSTICK_INT_CED = common dso_local global i8 0, align 1
@h_mspro_block_wait_for_ced = common dso_local global i32 0, align 4
@MEMSTICK_INT_BREQ = common dso_local global i8 0, align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_mspro_block_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_mspro_block_transfer_data(%struct.memstick_dev* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  %6 = alloca %struct.mspro_block_data*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %11 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %10)
  store %struct.mspro_block_data* %11, %struct.mspro_block_data** %6, align 8
  store i8 0, i8* %7, align 1
  %12 = bitcast %struct.scatterlist* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %14 = load %struct.memstick_request*, %struct.memstick_request** %13, align 8
  %15 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %20 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %21 = load %struct.memstick_request*, %struct.memstick_request** %20, align 8
  %22 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mspro_block_complete_req(%struct.memstick_dev* %19, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %215

25:                                               ; preds = %2
  %26 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %27 = load %struct.memstick_request*, %struct.memstick_request** %26, align 8
  %28 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %213 [
    i32 128, label %30
    i32 130, label %39
    i32 132, label %55
    i32 131, label %193
    i32 129, label %193
  ]

30:                                               ; preds = %25
  %31 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %32 = load %struct.memstick_request*, %struct.memstick_request** %31, align 8
  %33 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %34 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %33, i32 0, i32 0
  %35 = call i32 @memstick_init_req(%struct.memstick_request* %32, i32 130, i8* %34, i32 1)
  %36 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %37 = load %struct.memstick_request*, %struct.memstick_request** %36, align 8
  %38 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %215

39:                                               ; preds = %25
  %40 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %41 = load %struct.memstick_request*, %struct.memstick_request** %40, align 8
  %42 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  store i8 %43, i8* %7, align 1
  %44 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %45 = load %struct.memstick_request*, %struct.memstick_request** %44, align 8
  %46 = call i32 @memstick_init_req(%struct.memstick_request* %45, i32 132, i8* null, i32 1)
  %47 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %48 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MEMSTICK_CAP_AUTO_GET_INT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %62

54:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %215

55:                                               ; preds = %25
  %56 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %57 = load %struct.memstick_request*, %struct.memstick_request** %56, align 8
  %58 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %7, align 1
  br label %62

62:                                               ; preds = %204, %55, %53
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @MEMSTICK_INT_CMDNAK, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @MEMSTICK_INT_ERR, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load i8, i8* @MSPRO_CMD_STOP, align 1
  store i8 %73, i8* %7, align 1
  %74 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %75 = load %struct.memstick_request*, %struct.memstick_request** %74, align 8
  %76 = call i32 @memstick_init_req(%struct.memstick_request* %75, i32 130, i8* %7, i32 1)
  %77 = load i32, i32* @h_mspro_block_default, align 4
  %78 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %79 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %215

80:                                               ; preds = %62
  %81 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %82 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %85 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %84, i32 0, i32 7
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %88 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %94 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = icmp eq i32 %83, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %80
  %99 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %100 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  %101 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %102 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %106 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %109 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %98
  %113 = load i8, i8* %7, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @MEMSTICK_INT_CED, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %121 = call i32 @mspro_block_complete_req(%struct.memstick_dev* %120, i64 0)
  store i32 %121, i32* %3, align 4
  br label %215

122:                                              ; preds = %112
  %123 = load i32, i32* @h_mspro_block_wait_for_ced, align 4
  %124 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %125 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %127 = load %struct.memstick_request*, %struct.memstick_request** %126, align 8
  %128 = call i32 @memstick_init_req(%struct.memstick_request* %127, i32 132, i8* null, i32 1)
  store i32 0, i32* %3, align 4
  br label %215

129:                                              ; preds = %98
  br label %130

130:                                              ; preds = %129, %80
  %131 = load i8, i8* %7, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @MEMSTICK_INT_BREQ, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %130
  %138 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %139 = load %struct.memstick_request*, %struct.memstick_request** %138, align 8
  %140 = call i32 @memstick_init_req(%struct.memstick_request* %139, i32 132, i8* null, i32 1)
  store i32 0, i32* %3, align 4
  br label %215

141:                                              ; preds = %130
  %142 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %143 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %142, i32 0, i32 7
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %146 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %9, align 8
  %151 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %152 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %155 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %9, align 8
  %161 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %162 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %161, i32 0, i32 7
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %165 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %166
  %168 = call i32 @sg_page(%struct.TYPE_2__* %167)
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* @PAGE_SHIFT, align 8
  %171 = lshr i64 %169, %170
  %172 = call i32 @nth_page(i32 %168, i64 %171)
  %173 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %174 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @offset_in_page(i64 %177)
  %179 = call i32 @sg_set_page(%struct.scatterlist* %8, i32 %172, i64 %176, i32 %178)
  %180 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %181 = load %struct.memstick_request*, %struct.memstick_request** %180, align 8
  %182 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %183 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @READ, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 131, i32 129
  %189 = call i32 @memstick_init_req_sg(%struct.memstick_request* %181, i32 %188, %struct.scatterlist* %8)
  %190 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %191 = load %struct.memstick_request*, %struct.memstick_request** %190, align 8
  %192 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  store i32 0, i32* %3, align 4
  br label %215

193:                                              ; preds = %25, %25
  %194 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %195 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  %198 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %199 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @MEMSTICK_CAP_AUTO_GET_INT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %193
  %205 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %206 = load %struct.memstick_request*, %struct.memstick_request** %205, align 8
  %207 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %206, i32 0, i32 2
  %208 = load i8, i8* %207, align 8
  store i8 %208, i8* %7, align 1
  br label %62

209:                                              ; preds = %193
  %210 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %211 = load %struct.memstick_request*, %struct.memstick_request** %210, align 8
  %212 = call i32 @memstick_init_req(%struct.memstick_request* %211, i32 132, i8* null, i32 1)
  store i32 0, i32* %3, align 4
  br label %215

213:                                              ; preds = %25
  %214 = call i32 (...) @BUG()
  br label %215

215:                                              ; preds = %18, %30, %54, %72, %119, %122, %137, %141, %209, %213
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mspro_block_complete_req(%struct.memstick_dev*, i64) #1

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, i8*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @nth_page(i32, i64) #1

declare dso_local i32 @sg_page(%struct.TYPE_2__*) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @memstick_init_req_sg(%struct.memstick_request*, i32, %struct.scatterlist*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
