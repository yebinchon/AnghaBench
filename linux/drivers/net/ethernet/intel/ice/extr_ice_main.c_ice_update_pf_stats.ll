; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_update_pf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_update_pf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw }
%struct.ice_hw_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PRTRPB_RDPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_update_pf_stats(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw_port_stats*, align 8
  %4 = alloca %struct.ice_hw_port_stats*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %7 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 3
  store %struct.ice_hw* %8, %struct.ice_hw** %5, align 8
  %9 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 2
  store %struct.ice_hw_port_stats* %15, %struct.ice_hw_port_stats** %3, align 8
  %16 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 1
  store %struct.ice_hw_port_stats* %17, %struct.ice_hw_port_stats** %4, align 8
  %18 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GLPRT_GORCL(i32 %19)
  %21 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %25 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %24, i32 0, i32 28
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  %27 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %28 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %27, i32 0, i32 28
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 8
  %30 = call i32 @ice_stat_update40(%struct.ice_hw* %18, i32 %20, i32 %23, i32* %26, i32* %29)
  %31 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @GLPRT_UPRCL(i32 %32)
  %34 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %38 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %37, i32 0, i32 28
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  %40 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %41 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %40, i32 0, i32 28
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  %43 = call i32 @ice_stat_update40(%struct.ice_hw* %31, i32 %33, i32 %36, i32* %39, i32* %42)
  %44 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @GLPRT_MPRCL(i32 %45)
  %47 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %48 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %51 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %50, i32 0, i32 28
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %54 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %53, i32 0, i32 28
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = call i32 @ice_stat_update40(%struct.ice_hw* %44, i32 %46, i32 %49, i32* %52, i32* %55)
  %57 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @GLPRT_BPRCL(i32 %58)
  %60 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %64 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %63, i32 0, i32 28
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %67 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %66, i32 0, i32 28
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = call i32 @ice_stat_update40(%struct.ice_hw* %57, i32 %59, i32 %62, i32* %65, i32* %68)
  %70 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %71 = load i32, i32* @PRTRPB_RDPC, align 4
  %72 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %73 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %76 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %75, i32 0, i32 28
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %79 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %78, i32 0, i32 28
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = call i32 @ice_stat_update32(%struct.ice_hw* %70, i32 %71, i32 %74, i32* %77, i32* %80)
  %82 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @GLPRT_GOTCL(i32 %83)
  %85 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %86 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %89 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %88, i32 0, i32 28
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %92 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %91, i32 0, i32 28
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = call i32 @ice_stat_update40(%struct.ice_hw* %82, i32 %84, i32 %87, i32* %90, i32* %93)
  %95 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @GLPRT_UPTCL(i32 %96)
  %98 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %99 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %102 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %101, i32 0, i32 28
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %105 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %104, i32 0, i32 28
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @ice_stat_update40(%struct.ice_hw* %95, i32 %97, i32 %100, i32* %103, i32* %106)
  %108 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @GLPRT_MPTCL(i32 %109)
  %111 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %112 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %115 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %114, i32 0, i32 28
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %118 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %117, i32 0, i32 28
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = call i32 @ice_stat_update40(%struct.ice_hw* %108, i32 %110, i32 %113, i32* %116, i32* %119)
  %121 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @GLPRT_BPTCL(i32 %122)
  %124 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %125 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %128 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %127, i32 0, i32 28
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %131 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %130, i32 0, i32 28
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @ice_stat_update40(%struct.ice_hw* %121, i32 %123, i32 %126, i32* %129, i32* %132)
  %134 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @GLPRT_TDOLD(i32 %135)
  %137 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %138 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %141 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %140, i32 0, i32 27
  %142 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %143 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %142, i32 0, i32 27
  %144 = call i32 @ice_stat_update32(%struct.ice_hw* %134, i32 %136, i32 %139, i32* %141, i32* %143)
  %145 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @GLPRT_PRC64L(i32 %146)
  %148 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %149 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %152 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %151, i32 0, i32 26
  %153 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %154 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %153, i32 0, i32 26
  %155 = call i32 @ice_stat_update40(%struct.ice_hw* %145, i32 %147, i32 %150, i32* %152, i32* %154)
  %156 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @GLPRT_PRC127L(i32 %157)
  %159 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %160 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %163 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %162, i32 0, i32 25
  %164 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %165 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %164, i32 0, i32 25
  %166 = call i32 @ice_stat_update40(%struct.ice_hw* %156, i32 %158, i32 %161, i32* %163, i32* %165)
  %167 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @GLPRT_PRC255L(i32 %168)
  %170 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %171 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %174 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %173, i32 0, i32 24
  %175 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %176 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %175, i32 0, i32 24
  %177 = call i32 @ice_stat_update40(%struct.ice_hw* %167, i32 %169, i32 %172, i32* %174, i32* %176)
  %178 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @GLPRT_PRC511L(i32 %179)
  %181 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %182 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %185 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %184, i32 0, i32 23
  %186 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %187 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %186, i32 0, i32 23
  %188 = call i32 @ice_stat_update40(%struct.ice_hw* %178, i32 %180, i32 %183, i32* %185, i32* %187)
  %189 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @GLPRT_PRC1023L(i32 %190)
  %192 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %193 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %196 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %195, i32 0, i32 22
  %197 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %198 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %197, i32 0, i32 22
  %199 = call i32 @ice_stat_update40(%struct.ice_hw* %189, i32 %191, i32 %194, i32* %196, i32* %198)
  %200 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @GLPRT_PRC1522L(i32 %201)
  %203 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %204 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %207 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %206, i32 0, i32 21
  %208 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %209 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %208, i32 0, i32 21
  %210 = call i32 @ice_stat_update40(%struct.ice_hw* %200, i32 %202, i32 %205, i32* %207, i32* %209)
  %211 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @GLPRT_PRC9522L(i32 %212)
  %214 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %215 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %218 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %217, i32 0, i32 20
  %219 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %220 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %219, i32 0, i32 20
  %221 = call i32 @ice_stat_update40(%struct.ice_hw* %211, i32 %213, i32 %216, i32* %218, i32* %220)
  %222 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @GLPRT_PTC64L(i32 %223)
  %225 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %226 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %229 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %228, i32 0, i32 19
  %230 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %231 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %230, i32 0, i32 19
  %232 = call i32 @ice_stat_update40(%struct.ice_hw* %222, i32 %224, i32 %227, i32* %229, i32* %231)
  %233 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @GLPRT_PTC127L(i32 %234)
  %236 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %237 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %240 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %239, i32 0, i32 18
  %241 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %242 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %241, i32 0, i32 18
  %243 = call i32 @ice_stat_update40(%struct.ice_hw* %233, i32 %235, i32 %238, i32* %240, i32* %242)
  %244 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @GLPRT_PTC255L(i32 %245)
  %247 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %248 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %251 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %250, i32 0, i32 17
  %252 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %253 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %252, i32 0, i32 17
  %254 = call i32 @ice_stat_update40(%struct.ice_hw* %244, i32 %246, i32 %249, i32* %251, i32* %253)
  %255 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @GLPRT_PTC511L(i32 %256)
  %258 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %259 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %262 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %261, i32 0, i32 16
  %263 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %264 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %263, i32 0, i32 16
  %265 = call i32 @ice_stat_update40(%struct.ice_hw* %255, i32 %257, i32 %260, i32* %262, i32* %264)
  %266 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @GLPRT_PTC1023L(i32 %267)
  %269 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %270 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %273 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %272, i32 0, i32 15
  %274 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %275 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %274, i32 0, i32 15
  %276 = call i32 @ice_stat_update40(%struct.ice_hw* %266, i32 %268, i32 %271, i32* %273, i32* %275)
  %277 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 @GLPRT_PTC1522L(i32 %278)
  %280 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %281 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %284 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %283, i32 0, i32 14
  %285 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %286 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %285, i32 0, i32 14
  %287 = call i32 @ice_stat_update40(%struct.ice_hw* %277, i32 %279, i32 %282, i32* %284, i32* %286)
  %288 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @GLPRT_PTC9522L(i32 %289)
  %291 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %292 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %295 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %294, i32 0, i32 13
  %296 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %297 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %296, i32 0, i32 13
  %298 = call i32 @ice_stat_update40(%struct.ice_hw* %288, i32 %290, i32 %293, i32* %295, i32* %297)
  %299 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %300 = load i32, i32* %6, align 4
  %301 = call i32 @GLPRT_LXONRXC(i32 %300)
  %302 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %303 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %306 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %305, i32 0, i32 12
  %307 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %308 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %307, i32 0, i32 12
  %309 = call i32 @ice_stat_update32(%struct.ice_hw* %299, i32 %301, i32 %304, i32* %306, i32* %308)
  %310 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %311 = load i32, i32* %6, align 4
  %312 = call i32 @GLPRT_LXOFFRXC(i32 %311)
  %313 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %314 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %317 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %316, i32 0, i32 11
  %318 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %319 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %318, i32 0, i32 11
  %320 = call i32 @ice_stat_update32(%struct.ice_hw* %310, i32 %312, i32 %315, i32* %317, i32* %319)
  %321 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %322 = load i32, i32* %6, align 4
  %323 = call i32 @GLPRT_LXONTXC(i32 %322)
  %324 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %325 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %328 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %327, i32 0, i32 10
  %329 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %330 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %329, i32 0, i32 10
  %331 = call i32 @ice_stat_update32(%struct.ice_hw* %321, i32 %323, i32 %326, i32* %328, i32* %330)
  %332 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @GLPRT_LXOFFTXC(i32 %333)
  %335 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %336 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %339 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %338, i32 0, i32 9
  %340 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %341 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %340, i32 0, i32 9
  %342 = call i32 @ice_stat_update32(%struct.ice_hw* %332, i32 %334, i32 %337, i32* %339, i32* %341)
  %343 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %344 = call i32 @ice_update_dcb_stats(%struct.ice_pf* %343)
  %345 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @GLPRT_CRCERRS(i32 %346)
  %348 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %349 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %352 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %351, i32 0, i32 8
  %353 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %354 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %353, i32 0, i32 8
  %355 = call i32 @ice_stat_update32(%struct.ice_hw* %345, i32 %347, i32 %350, i32* %352, i32* %354)
  %356 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @GLPRT_ILLERRC(i32 %357)
  %359 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %360 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %363 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %362, i32 0, i32 7
  %364 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %365 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %364, i32 0, i32 7
  %366 = call i32 @ice_stat_update32(%struct.ice_hw* %356, i32 %358, i32 %361, i32* %363, i32* %365)
  %367 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @GLPRT_MLFC(i32 %368)
  %370 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %371 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %374 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %373, i32 0, i32 6
  %375 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %376 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %375, i32 0, i32 6
  %377 = call i32 @ice_stat_update32(%struct.ice_hw* %367, i32 %369, i32 %372, i32* %374, i32* %376)
  %378 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @GLPRT_MRFC(i32 %379)
  %381 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %382 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %385 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %384, i32 0, i32 5
  %386 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %387 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %386, i32 0, i32 5
  %388 = call i32 @ice_stat_update32(%struct.ice_hw* %378, i32 %380, i32 %383, i32* %385, i32* %387)
  %389 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %390 = load i32, i32* %6, align 4
  %391 = call i32 @GLPRT_RLEC(i32 %390)
  %392 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %393 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %396 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %395, i32 0, i32 4
  %397 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %398 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %397, i32 0, i32 4
  %399 = call i32 @ice_stat_update32(%struct.ice_hw* %389, i32 %391, i32 %394, i32* %396, i32* %398)
  %400 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %401 = load i32, i32* %6, align 4
  %402 = call i32 @GLPRT_RUC(i32 %401)
  %403 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %404 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %407 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %406, i32 0, i32 3
  %408 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %409 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %408, i32 0, i32 3
  %410 = call i32 @ice_stat_update32(%struct.ice_hw* %400, i32 %402, i32 %405, i32* %407, i32* %409)
  %411 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %412 = load i32, i32* %6, align 4
  %413 = call i32 @GLPRT_RFC(i32 %412)
  %414 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %415 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %418 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %417, i32 0, i32 2
  %419 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %420 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %419, i32 0, i32 2
  %421 = call i32 @ice_stat_update32(%struct.ice_hw* %411, i32 %413, i32 %416, i32* %418, i32* %420)
  %422 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %423 = load i32, i32* %6, align 4
  %424 = call i32 @GLPRT_ROC(i32 %423)
  %425 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %426 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %429 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %428, i32 0, i32 1
  %430 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %431 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %430, i32 0, i32 1
  %432 = call i32 @ice_stat_update32(%struct.ice_hw* %422, i32 %424, i32 %427, i32* %429, i32* %431)
  %433 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %434 = load i32, i32* %6, align 4
  %435 = call i32 @GLPRT_RJC(i32 %434)
  %436 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %437 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %3, align 8
  %440 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %439, i32 0, i32 0
  %441 = load %struct.ice_hw_port_stats*, %struct.ice_hw_port_stats** %4, align 8
  %442 = getelementptr inbounds %struct.ice_hw_port_stats, %struct.ice_hw_port_stats* %441, i32 0, i32 0
  %443 = call i32 @ice_stat_update32(%struct.ice_hw* %433, i32 %435, i32 %438, i32* %440, i32* %442)
  %444 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %445 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %444, i32 0, i32 0
  store i32 1, i32* %445, align 8
  ret void
}

declare dso_local i32 @ice_stat_update40(%struct.ice_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @GLPRT_GORCL(i32) #1

declare dso_local i32 @GLPRT_UPRCL(i32) #1

declare dso_local i32 @GLPRT_MPRCL(i32) #1

declare dso_local i32 @GLPRT_BPRCL(i32) #1

declare dso_local i32 @ice_stat_update32(%struct.ice_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @GLPRT_GOTCL(i32) #1

declare dso_local i32 @GLPRT_UPTCL(i32) #1

declare dso_local i32 @GLPRT_MPTCL(i32) #1

declare dso_local i32 @GLPRT_BPTCL(i32) #1

declare dso_local i32 @GLPRT_TDOLD(i32) #1

declare dso_local i32 @GLPRT_PRC64L(i32) #1

declare dso_local i32 @GLPRT_PRC127L(i32) #1

declare dso_local i32 @GLPRT_PRC255L(i32) #1

declare dso_local i32 @GLPRT_PRC511L(i32) #1

declare dso_local i32 @GLPRT_PRC1023L(i32) #1

declare dso_local i32 @GLPRT_PRC1522L(i32) #1

declare dso_local i32 @GLPRT_PRC9522L(i32) #1

declare dso_local i32 @GLPRT_PTC64L(i32) #1

declare dso_local i32 @GLPRT_PTC127L(i32) #1

declare dso_local i32 @GLPRT_PTC255L(i32) #1

declare dso_local i32 @GLPRT_PTC511L(i32) #1

declare dso_local i32 @GLPRT_PTC1023L(i32) #1

declare dso_local i32 @GLPRT_PTC1522L(i32) #1

declare dso_local i32 @GLPRT_PTC9522L(i32) #1

declare dso_local i32 @GLPRT_LXONRXC(i32) #1

declare dso_local i32 @GLPRT_LXOFFRXC(i32) #1

declare dso_local i32 @GLPRT_LXONTXC(i32) #1

declare dso_local i32 @GLPRT_LXOFFTXC(i32) #1

declare dso_local i32 @ice_update_dcb_stats(%struct.ice_pf*) #1

declare dso_local i32 @GLPRT_CRCERRS(i32) #1

declare dso_local i32 @GLPRT_ILLERRC(i32) #1

declare dso_local i32 @GLPRT_MLFC(i32) #1

declare dso_local i32 @GLPRT_MRFC(i32) #1

declare dso_local i32 @GLPRT_RLEC(i32) #1

declare dso_local i32 @GLPRT_RUC(i32) #1

declare dso_local i32 @GLPRT_RFC(i32) #1

declare dso_local i32 @GLPRT_ROC(i32) #1

declare dso_local i32 @GLPRT_RJC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
