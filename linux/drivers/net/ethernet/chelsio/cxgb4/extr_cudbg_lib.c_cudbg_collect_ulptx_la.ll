; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_ulptx_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_ulptx_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_ulptx_la = type { i8***, i8**, i8***, i8**, i8**, i8** }
%struct.cudbg_ver_hdr = type { i32, i32, i32 }

@CUDBG_ENTITY_SIGNATURE = common dso_local global i32 0, align 4
@CUDBG_ULPTX_LA_REV = common dso_local global i32 0, align 4
@CUDBG_NUM_ULPTX = common dso_local global i64 0, align 8
@ULP_TX_LA_RDPTR_0_A = common dso_local global i64 0, align 8
@ULP_TX_LA_WRPTR_0_A = common dso_local global i64 0, align 8
@ULP_TX_LA_RDDATA_0_A = common dso_local global i64 0, align 8
@CUDBG_NUM_ULPTX_READ = common dso_local global i64 0, align 8
@CUDBG_NUM_ULPTX_ASIC_READ = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_CTRL_A = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_0_A = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_1_A = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_2_A = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_3_A = common dso_local global i64 0, align 8
@ULP_TX_ASIC_DEBUG_4_A = common dso_local global i64 0, align 8
@PM_RX_BASE_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_ulptx_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_ulptx_la*, align 8
  %11 = alloca %struct.cudbg_ver_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %15 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %16 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %8, align 8
  %18 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %20 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %21 = call i32 @cudbg_get_buff(%struct.cudbg_init* %19, %struct.cudbg_buffer* %20, i32 60, %struct.cudbg_buffer* %9)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %4, align 4
  br label %190

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.cudbg_ver_hdr*
  store %struct.cudbg_ver_hdr* %29, %struct.cudbg_ver_hdr** %11, align 8
  %30 = load i32, i32* @CUDBG_ENTITY_SIGNATURE, align 4
  %31 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %32 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @CUDBG_ULPTX_LA_REV, align 4
  %34 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %36, i32 0, i32 0
  store i32 48, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 12
  %41 = inttoptr i64 %40 to %struct.cudbg_ulptx_la*
  store %struct.cudbg_ulptx_la* %41, %struct.cudbg_ulptx_la** %10, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %103, %26
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @CUDBG_NUM_ULPTX, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %106

46:                                               ; preds = %42
  %47 = load %struct.adapter*, %struct.adapter** %8, align 8
  %48 = load i64, i64* @ULP_TX_LA_RDPTR_0_A, align 8
  %49 = load i64, i64* %12, align 8
  %50 = mul i64 16, %49
  %51 = add i64 %48, %50
  %52 = call i8* @t4_read_reg(%struct.adapter* %47, i64 %51)
  %53 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %54 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %53, i32 0, i32 5
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* %52, i8** %57, align 8
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = load i64, i64* @ULP_TX_LA_WRPTR_0_A, align 8
  %60 = load i64, i64* %12, align 8
  %61 = mul i64 16, %60
  %62 = add i64 %59, %61
  %63 = call i8* @t4_read_reg(%struct.adapter* %58, i64 %62)
  %64 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %65 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %64, i32 0, i32 4
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load %struct.adapter*, %struct.adapter** %8, align 8
  %70 = load i64, i64* @ULP_TX_LA_RDDATA_0_A, align 8
  %71 = load i64, i64* %12, align 8
  %72 = mul i64 16, %71
  %73 = add i64 %70, %72
  %74 = call i8* @t4_read_reg(%struct.adapter* %69, i64 %73)
  %75 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %76 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %75, i32 0, i32 3
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %74, i8** %79, align 8
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %99, %46
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @CUDBG_NUM_ULPTX_READ, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.adapter*, %struct.adapter** %8, align 8
  %86 = load i64, i64* @ULP_TX_LA_RDDATA_0_A, align 8
  %87 = load i64, i64* %12, align 8
  %88 = mul i64 16, %87
  %89 = add i64 %86, %88
  %90 = call i8* @t4_read_reg(%struct.adapter* %85, i64 %89)
  %91 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %92 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %91, i32 0, i32 2
  %93 = load i8***, i8**** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i8**, i8*** %93, i64 %94
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8* %90, i8** %98, align 8
  br label %99

99:                                               ; preds = %84
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %80

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %42

106:                                              ; preds = %42
  store i64 0, i64* %12, align 8
  br label %107

107:                                              ; preds = %183, %106
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @CUDBG_NUM_ULPTX_ASIC_READ, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %186

111:                                              ; preds = %107
  %112 = load %struct.adapter*, %struct.adapter** %8, align 8
  %113 = load i64, i64* @ULP_TX_ASIC_DEBUG_CTRL_A, align 8
  %114 = call i32 @t4_write_reg(%struct.adapter* %112, i64 %113, i32 1)
  %115 = load %struct.adapter*, %struct.adapter** %8, align 8
  %116 = load i64, i64* @ULP_TX_ASIC_DEBUG_CTRL_A, align 8
  %117 = call i8* @t4_read_reg(%struct.adapter* %115, i64 %116)
  %118 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %119 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* %117, i8** %122, align 8
  %123 = load %struct.adapter*, %struct.adapter** %8, align 8
  %124 = load i64, i64* @ULP_TX_ASIC_DEBUG_0_A, align 8
  %125 = call i8* @t4_read_reg(%struct.adapter* %123, i64 %124)
  %126 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %127 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %126, i32 0, i32 0
  %128 = load i8***, i8**** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds i8**, i8*** %128, i64 %129
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %125, i8** %132, align 8
  %133 = load %struct.adapter*, %struct.adapter** %8, align 8
  %134 = load i64, i64* @ULP_TX_ASIC_DEBUG_1_A, align 8
  %135 = call i8* @t4_read_reg(%struct.adapter* %133, i64 %134)
  %136 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %137 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %136, i32 0, i32 0
  %138 = load i8***, i8**** %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds i8**, i8*** %138, i64 %139
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  store i8* %135, i8** %142, align 8
  %143 = load %struct.adapter*, %struct.adapter** %8, align 8
  %144 = load i64, i64* @ULP_TX_ASIC_DEBUG_2_A, align 8
  %145 = call i8* @t4_read_reg(%struct.adapter* %143, i64 %144)
  %146 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %147 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %146, i32 0, i32 0
  %148 = load i8***, i8**** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i8**, i8*** %148, i64 %149
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  store i8* %145, i8** %152, align 8
  %153 = load %struct.adapter*, %struct.adapter** %8, align 8
  %154 = load i64, i64* @ULP_TX_ASIC_DEBUG_3_A, align 8
  %155 = call i8* @t4_read_reg(%struct.adapter* %153, i64 %154)
  %156 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %157 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %156, i32 0, i32 0
  %158 = load i8***, i8**** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds i8**, i8*** %158, i64 %159
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 3
  store i8* %155, i8** %162, align 8
  %163 = load %struct.adapter*, %struct.adapter** %8, align 8
  %164 = load i64, i64* @ULP_TX_ASIC_DEBUG_4_A, align 8
  %165 = call i8* @t4_read_reg(%struct.adapter* %163, i64 %164)
  %166 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %167 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %166, i32 0, i32 0
  %168 = load i8***, i8**** %167, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds i8**, i8*** %168, i64 %169
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 4
  store i8* %165, i8** %172, align 8
  %173 = load %struct.adapter*, %struct.adapter** %8, align 8
  %174 = load i64, i64* @PM_RX_BASE_ADDR, align 8
  %175 = call i8* @t4_read_reg(%struct.adapter* %173, i64 %174)
  %176 = load %struct.cudbg_ulptx_la*, %struct.cudbg_ulptx_la** %10, align 8
  %177 = getelementptr inbounds %struct.cudbg_ulptx_la, %struct.cudbg_ulptx_la* %176, i32 0, i32 0
  %178 = load i8***, i8**** %177, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds i8**, i8*** %178, i64 %179
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 5
  store i8* %175, i8** %182, align 8
  br label %183

183:                                              ; preds = %111
  %184 = load i64, i64* %12, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %107

186:                                              ; preds = %107
  %187 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %188 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %189 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %187, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %188)
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %186, %24
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i8* @t4_read_reg(%struct.adapter*, i64) #2

declare dso_local i32 @t4_write_reg(%struct.adapter*, i64, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
