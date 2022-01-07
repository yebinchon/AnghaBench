; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_veb_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_veb_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i32, i32, %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats, %struct.i40e_eth_stats, %struct.i40e_eth_stats, %struct.i40e_pf* }
%struct.i40e_veb_tc_stats = type { i32*, i32*, i32*, i32* }
%struct.i40e_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i64 }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_update_veb_stats(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_eth_stats*, align 8
  %6 = alloca %struct.i40e_eth_stats*, align 8
  %7 = alloca %struct.i40e_veb_tc_stats*, align 8
  %8 = alloca %struct.i40e_veb_tc_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  %11 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %11, i32 0, i32 6
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %3, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  store %struct.i40e_hw* %15, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %19, i32 0, i32 5
  store %struct.i40e_eth_stats* %20, %struct.i40e_eth_stats** %6, align 8
  %21 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %21, i32 0, i32 4
  store %struct.i40e_eth_stats* %22, %struct.i40e_eth_stats** %5, align 8
  %23 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %23, i32 0, i32 3
  store %struct.i40e_veb_tc_stats* %24, %struct.i40e_veb_tc_stats** %8, align 8
  %25 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %25, i32 0, i32 2
  store %struct.i40e_veb_tc_stats* %26, %struct.i40e_veb_tc_stats** %7, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @I40E_GLSW_TDPC(i32 %28)
  %30 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %33, i32 0, i32 9
  %35 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %36 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %35, i32 0, i32 9
  %37 = call i32 @i40e_stat_update32(%struct.i40e_hw* %27, i32 %29, i32 %32, i32* %34, i32* %36)
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %1
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @I40E_GLSW_RUPP(i32 %44)
  %46 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %49, i32 0, i32 8
  %51 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %52 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %51, i32 0, i32 8
  %53 = call i32 @i40e_stat_update32(%struct.i40e_hw* %43, i32 %45, i32 %48, i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %42, %1
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @I40E_GLSW_GORCH(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @I40E_GLSW_GORCL(i32 %58)
  %60 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %64 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %63, i32 0, i32 7
  %65 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %66 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %65, i32 0, i32 7
  %67 = call i32 @i40e_stat_update48(%struct.i40e_hw* %55, i32 %57, i32 %59, i32 %62, i32* %64, i32* %66)
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @I40E_GLSW_UPRCH(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @I40E_GLSW_UPRCL(i32 %71)
  %73 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %74 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %77 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %76, i32 0, i32 6
  %78 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %79 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %78, i32 0, i32 6
  %80 = call i32 @i40e_stat_update48(%struct.i40e_hw* %68, i32 %70, i32 %72, i32 %75, i32* %77, i32* %79)
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @I40E_GLSW_MPRCH(i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @I40E_GLSW_MPRCL(i32 %84)
  %86 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %87 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %90 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %89, i32 0, i32 5
  %91 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %91, i32 0, i32 5
  %93 = call i32 @i40e_stat_update48(%struct.i40e_hw* %81, i32 %83, i32 %85, i32 %88, i32* %90, i32* %92)
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @I40E_GLSW_BPRCH(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @I40E_GLSW_BPRCL(i32 %97)
  %99 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %100 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %103 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %102, i32 0, i32 4
  %104 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %105 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %104, i32 0, i32 4
  %106 = call i32 @i40e_stat_update48(%struct.i40e_hw* %94, i32 %96, i32 %98, i32 %101, i32* %103, i32* %105)
  %107 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @I40E_GLSW_GOTCH(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @I40E_GLSW_GOTCL(i32 %110)
  %112 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %113 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %116 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %115, i32 0, i32 3
  %117 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %118 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %117, i32 0, i32 3
  %119 = call i32 @i40e_stat_update48(%struct.i40e_hw* %107, i32 %109, i32 %111, i32 %114, i32* %116, i32* %118)
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @I40E_GLSW_UPTCH(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @I40E_GLSW_UPTCL(i32 %123)
  %125 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %126 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %129 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %128, i32 0, i32 2
  %130 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %131 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %130, i32 0, i32 2
  %132 = call i32 @i40e_stat_update48(%struct.i40e_hw* %120, i32 %122, i32 %124, i32 %127, i32* %129, i32* %131)
  %133 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @I40E_GLSW_MPTCH(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @I40E_GLSW_MPTCL(i32 %136)
  %138 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %139 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %142 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %141, i32 0, i32 1
  %143 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %144 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %143, i32 0, i32 1
  %145 = call i32 @i40e_stat_update48(%struct.i40e_hw* %133, i32 %135, i32 %137, i32 %140, i32* %142, i32* %144)
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @I40E_GLSW_BPTCH(i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @I40E_GLSW_BPTCL(i32 %149)
  %151 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %152 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %5, align 8
  %155 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %154, i32 0, i32 0
  %156 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %157 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %156, i32 0, i32 0
  %158 = call i32 @i40e_stat_update48(%struct.i40e_hw* %146, i32 %148, i32 %150, i32 %153, i32* %155, i32* %157)
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %256, %54
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %259

163:                                              ; preds = %159
  %164 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @I40E_GLVEBTC_RPCH(i32 %165, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @I40E_GLVEBTC_RPCL(i32 %168, i32 %169)
  %171 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %172 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %7, align 8
  %175 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %8, align 8
  %181 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @i40e_stat_update48(%struct.i40e_hw* %164, i32 %167, i32 %170, i32 %173, i32* %179, i32* %185)
  %187 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @I40E_GLVEBTC_RBCH(i32 %188, i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @I40E_GLVEBTC_RBCL(i32 %191, i32 %192)
  %194 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %195 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %7, align 8
  %198 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %8, align 8
  %204 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = call i32 @i40e_stat_update48(%struct.i40e_hw* %187, i32 %190, i32 %193, i32 %196, i32* %202, i32* %208)
  %210 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @I40E_GLVEBTC_TPCH(i32 %211, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @I40E_GLVEBTC_TPCL(i32 %214, i32 %215)
  %217 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %218 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %7, align 8
  %221 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %8, align 8
  %227 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = call i32 @i40e_stat_update48(%struct.i40e_hw* %210, i32 %213, i32 %216, i32 %219, i32* %225, i32* %231)
  %233 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @I40E_GLVEBTC_TBCH(i32 %234, i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @I40E_GLVEBTC_TBCL(i32 %237, i32 %238)
  %240 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %241 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %7, align 8
  %244 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load %struct.i40e_veb_tc_stats*, %struct.i40e_veb_tc_stats** %8, align 8
  %250 = getelementptr inbounds %struct.i40e_veb_tc_stats, %struct.i40e_veb_tc_stats* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = call i32 @i40e_stat_update48(%struct.i40e_hw* %233, i32 %236, i32 %239, i32 %242, i32* %248, i32* %254)
  br label %256

256:                                              ; preds = %163
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %9, align 4
  br label %159

259:                                              ; preds = %159
  %260 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %261 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %260, i32 0, i32 1
  store i32 1, i32* %261, align 4
  ret void
}

declare dso_local i32 @i40e_stat_update32(%struct.i40e_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLSW_TDPC(i32) #1

declare dso_local i32 @I40E_GLSW_RUPP(i32) #1

declare dso_local i32 @i40e_stat_update48(%struct.i40e_hw*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLSW_GORCH(i32) #1

declare dso_local i32 @I40E_GLSW_GORCL(i32) #1

declare dso_local i32 @I40E_GLSW_UPRCH(i32) #1

declare dso_local i32 @I40E_GLSW_UPRCL(i32) #1

declare dso_local i32 @I40E_GLSW_MPRCH(i32) #1

declare dso_local i32 @I40E_GLSW_MPRCL(i32) #1

declare dso_local i32 @I40E_GLSW_BPRCH(i32) #1

declare dso_local i32 @I40E_GLSW_BPRCL(i32) #1

declare dso_local i32 @I40E_GLSW_GOTCH(i32) #1

declare dso_local i32 @I40E_GLSW_GOTCL(i32) #1

declare dso_local i32 @I40E_GLSW_UPTCH(i32) #1

declare dso_local i32 @I40E_GLSW_UPTCL(i32) #1

declare dso_local i32 @I40E_GLSW_MPTCH(i32) #1

declare dso_local i32 @I40E_GLSW_MPTCL(i32) #1

declare dso_local i32 @I40E_GLSW_BPTCH(i32) #1

declare dso_local i32 @I40E_GLSW_BPTCL(i32) #1

declare dso_local i32 @I40E_GLVEBTC_RPCH(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_RPCL(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_RBCH(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_RBCL(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_TPCH(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_TPCL(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_TBCH(i32, i32) #1

declare dso_local i32 @I40E_GLVEBTC_TBCL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
