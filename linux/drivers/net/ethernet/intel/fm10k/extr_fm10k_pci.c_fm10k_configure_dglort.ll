; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_dglort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_configure_dglort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32*, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i64, i32, %struct.fm10k_hw }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.fm10k_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_dglort_cfg = type opaque
%struct.fm10k_dglort_cfg.1 = type { i32, i8*, i32, i8*, i8*, i64, i8*, i32 }

@FM10K_RSSRK_SIZE = common dso_local global i32 0, align 4
@FM10K_RETA_SIZE = common dso_local global i32 0, align 4
@FM10K_MRQC_IPV4 = common dso_local global i32 0, align 4
@FM10K_MRQC_TCP_IPV4 = common dso_local global i32 0, align 4
@FM10K_MRQC_IPV6 = common dso_local global i32 0, align 4
@FM10K_MRQC_TCP_IPV6 = common dso_local global i32 0, align 4
@FM10K_FLAG_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@FM10K_MRQC_UDP_IPV4 = common dso_local global i32 0, align 4
@FM10K_FLAG_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@FM10K_MRQC_UDP_IPV6 = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@RING_F_QOS = common dso_local global i64 0, align 8
@fm10k_dglort_pf_queue = common dso_local global i32 0, align 4
@fm10k_dglort_pf_rss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_configure_dglort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_configure_dglort(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_dglort_cfg.1, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %7 = bitcast %struct.fm10k_dglort_cfg.1* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false)
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 8
  store %struct.fm10k_hw* %9, %struct.fm10k_hw** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FM10K_RSSRK_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @FM10K_RSSRK(i32 0, i32 %16)
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %15, i32 %17, i32 %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FM10K_RETA_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @FM10K_RETA(i32 0, i32 %36)
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %35, i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* @FM10K_MRQC_IPV4, align 4
  %51 = load i32, i32* @FM10K_MRQC_TCP_IPV4, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FM10K_MRQC_IPV6, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FM10K_MRQC_TCP_IPV6, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @FM10K_FLAG_RSS_FIELD_IPV4_UDP, align 4
  %58 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %59 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @test_bit(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @FM10K_MRQC_UDP_IPV4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %49
  %68 = load i32, i32* @FM10K_FLAG_RSS_FIELD_IPV6_UDP, align 4
  %69 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %70 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @test_bit(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @FM10K_MRQC_UDP_IPV6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %80 = call i32 @FM10K_MRQC(i32 0)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %79, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %85 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %84, i32 0, i32 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i64, i64* @RING_F_RSS, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @fls(i64 %90)
  %92 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 4
  store i8* %91, i8** %92, align 8
  %93 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %94 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %93, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i64, i64* @RING_F_QOS, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @fls(i64 %99)
  %101 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 3
  store i8* %100, i8** %101, align 8
  %102 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %103 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)** %105, align 8
  %107 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %108 = bitcast %struct.fm10k_hw* %107 to %struct.fm10k_hw.0*
  %109 = bitcast %struct.fm10k_dglort_cfg.1* %3 to %struct.fm10k_dglort_cfg*
  %110 = call i32 %106(%struct.fm10k_hw.0* %108, %struct.fm10k_dglort_cfg* %109)
  %111 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %112 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 64
  br i1 %114, label %115, label %140

115:                                              ; preds = %78
  %116 = call i32 @memset(%struct.fm10k_dglort_cfg.1* %3, i32 0, i32 64)
  %117 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %119 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 64
  %122 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 5
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @fm10k_dglort_pf_queue, align 4
  %124 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %126 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = call i8* @fls(i64 %128)
  %130 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 6
  store i8* %129, i8** %130, align 8
  %131 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %132 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)** %134, align 8
  %136 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %137 = bitcast %struct.fm10k_hw* %136 to %struct.fm10k_hw.0*
  %138 = bitcast %struct.fm10k_dglort_cfg.1* %3 to %struct.fm10k_dglort_cfg*
  %139 = call i32 %135(%struct.fm10k_hw.0* %137, %struct.fm10k_dglort_cfg* %138)
  br label %140

140:                                              ; preds = %115, %78
  %141 = call i32 @memset(%struct.fm10k_dglort_cfg.1* %3, i32 0, i32 64)
  %142 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %144 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 5
  store i64 %145, i64* %146, align 8
  %147 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %148 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i64, i64* @RING_F_RSS, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @fls(i64 %153)
  %155 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 4
  store i8* %154, i8** %155, align 8
  %156 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %157 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %156, i32 0, i32 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i64, i64* @RING_F_QOS, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @fls(i64 %162)
  %164 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 3
  store i8* %163, i8** %164, align 8
  %165 = load i32, i32* @fm10k_dglort_pf_rss, align 4
  %166 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 2
  store i32 %165, i32* %166, align 8
  %167 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %168 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %167, i32 0, i32 3
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = icmp ne %struct.TYPE_6__* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %140
  %172 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %173 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @fls(i64 %176)
  %178 = getelementptr inbounds %struct.fm10k_dglort_cfg.1, %struct.fm10k_dglort_cfg.1* %3, i32 0, i32 1
  store i8* %177, i8** %178, align 8
  br label %179

179:                                              ; preds = %171, %140
  %180 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %181 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)** %183, align 8
  %185 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %186 = bitcast %struct.fm10k_hw* %185 to %struct.fm10k_hw.0*
  %187 = bitcast %struct.fm10k_dglort_cfg.1* %3 to %struct.fm10k_dglort_cfg*
  %188 = call i32 %184(%struct.fm10k_hw.0* %186, %struct.fm10k_dglort_cfg* %187)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #2

declare dso_local i32 @FM10K_RSSRK(i32, i32) #2

declare dso_local i32 @FM10K_RETA(i32, i32) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @FM10K_MRQC(i32) #2

declare dso_local i8* @fls(i64) #2

declare dso_local i32 @memset(%struct.fm10k_dglort_cfg.1*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
