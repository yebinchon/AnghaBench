; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_mac_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__qlcnic_esw_statistics = type { i32, i32, i32, i32, i32, i32, i32 }

@QLCNIC_MAC_STATS = common dso_local global i32 0, align 4
@QLCNIC_ESW_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32)* @qlcnic_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qlcnic_fill_stats(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_mac_statistics*, align 8
  %8 = alloca %struct.__qlcnic_esw_statistics*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @QLCNIC_MAC_STATS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %246

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.qlcnic_mac_statistics*
  store %struct.qlcnic_mac_statistics* %14, %struct.qlcnic_mac_statistics** %7, align 8
  %15 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %16 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %15, i32 0, i32 32
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @QLCNIC_FILL_STATS(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %22 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %23 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %22, i32 0, i32 31
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @QLCNIC_FILL_STATS(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %30 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %29, i32 0, i32 30
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @QLCNIC_FILL_STATS(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %37 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %36, i32 0, i32 29
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @QLCNIC_FILL_STATS(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %44 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %43, i32 0, i32 28
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @QLCNIC_FILL_STATS(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %51 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %50, i32 0, i32 27
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @QLCNIC_FILL_STATS(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %58 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %57, i32 0, i32 26
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @QLCNIC_FILL_STATS(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %65 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %64, i32 0, i32 25
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @QLCNIC_FILL_STATS(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  %71 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %72 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %71, i32 0, i32 24
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @QLCNIC_FILL_STATS(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %79 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %78, i32 0, i32 23
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @QLCNIC_FILL_STATS(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %4, align 8
  store i32 %82, i32* %83, align 4
  %85 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %86 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %85, i32 0, i32 22
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @QLCNIC_FILL_STATS(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  %92 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %93 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %92, i32 0, i32 21
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @QLCNIC_FILL_STATS(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %4, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %100 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @QLCNIC_FILL_STATS(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %4, align 8
  store i32 %103, i32* %104, align 4
  %106 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %107 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %106, i32 0, i32 19
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @QLCNIC_FILL_STATS(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %4, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %114 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %113, i32 0, i32 18
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @QLCNIC_FILL_STATS(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %4, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %121 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %120, i32 0, i32 17
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @QLCNIC_FILL_STATS(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %128 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @QLCNIC_FILL_STATS(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %4, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %135 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %134, i32 0, i32 15
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @QLCNIC_FILL_STATS(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %4, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %142 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %141, i32 0, i32 14
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @QLCNIC_FILL_STATS(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %4, align 8
  store i32 %145, i32* %146, align 4
  %148 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %149 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %148, i32 0, i32 13
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @QLCNIC_FILL_STATS(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %4, align 8
  store i32 %152, i32* %153, align 4
  %155 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %156 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @QLCNIC_FILL_STATS(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %4, align 8
  store i32 %159, i32* %160, align 4
  %162 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %163 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @QLCNIC_FILL_STATS(i32 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %4, align 8
  store i32 %166, i32* %167, align 4
  %169 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %170 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @QLCNIC_FILL_STATS(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %4, align 8
  store i32 %173, i32* %174, align 4
  %176 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %177 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @QLCNIC_FILL_STATS(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %4, align 8
  store i32 %180, i32* %181, align 4
  %183 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %184 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @QLCNIC_FILL_STATS(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %4, align 8
  store i32 %187, i32* %188, align 4
  %190 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %191 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @QLCNIC_FILL_STATS(i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %4, align 8
  store i32 %194, i32* %195, align 4
  %197 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %198 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @QLCNIC_FILL_STATS(i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %4, align 8
  store i32 %201, i32* %202, align 4
  %204 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %205 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @QLCNIC_FILL_STATS(i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %4, align 8
  store i32 %208, i32* %209, align 4
  %211 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %212 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @QLCNIC_FILL_STATS(i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %4, align 8
  store i32 %215, i32* %216, align 4
  %218 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %219 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @QLCNIC_FILL_STATS(i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %4, align 8
  store i32 %222, i32* %223, align 4
  %225 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %226 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @QLCNIC_FILL_STATS(i32 %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %4, align 8
  store i32 %229, i32* %230, align 4
  %232 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %233 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @QLCNIC_FILL_STATS(i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = load i32*, i32** %4, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %4, align 8
  store i32 %236, i32* %237, align 4
  %239 = load %struct.qlcnic_mac_statistics*, %struct.qlcnic_mac_statistics** %7, align 8
  %240 = getelementptr inbounds %struct.qlcnic_mac_statistics, %struct.qlcnic_mac_statistics* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @QLCNIC_FILL_STATS(i32 %241)
  %243 = ptrtoint i8* %242 to i32
  %244 = load i32*, i32** %4, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %4, align 8
  store i32 %243, i32* %244, align 4
  br label %303

246:                                              ; preds = %3
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @QLCNIC_ESW_STATS, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %302

250:                                              ; preds = %246
  %251 = load i8*, i8** %5, align 8
  %252 = bitcast i8* %251 to %struct.__qlcnic_esw_statistics*
  store %struct.__qlcnic_esw_statistics* %252, %struct.__qlcnic_esw_statistics** %8, align 8
  %253 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %254 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @QLCNIC_FILL_STATS(i32 %255)
  %257 = ptrtoint i8* %256 to i32
  %258 = load i32*, i32** %4, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %4, align 8
  store i32 %257, i32* %258, align 4
  %260 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %261 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @QLCNIC_FILL_STATS(i32 %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load i32*, i32** %4, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %4, align 8
  store i32 %264, i32* %265, align 4
  %267 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %268 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @QLCNIC_FILL_STATS(i32 %269)
  %271 = ptrtoint i8* %270 to i32
  %272 = load i32*, i32** %4, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %4, align 8
  store i32 %271, i32* %272, align 4
  %274 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %275 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i8* @QLCNIC_FILL_STATS(i32 %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load i32*, i32** %4, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %4, align 8
  store i32 %278, i32* %279, align 4
  %281 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %282 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @QLCNIC_FILL_STATS(i32 %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load i32*, i32** %4, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %4, align 8
  store i32 %285, i32* %286, align 4
  %288 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %289 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @QLCNIC_FILL_STATS(i32 %290)
  %292 = ptrtoint i8* %291 to i32
  %293 = load i32*, i32** %4, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %4, align 8
  store i32 %292, i32* %293, align 4
  %295 = load %struct.__qlcnic_esw_statistics*, %struct.__qlcnic_esw_statistics** %8, align 8
  %296 = getelementptr inbounds %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @QLCNIC_FILL_STATS(i32 %297)
  %299 = ptrtoint i8* %298 to i32
  %300 = load i32*, i32** %4, align 8
  %301 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %301, i32** %4, align 8
  store i32 %299, i32* %300, align 4
  br label %302

302:                                              ; preds = %250, %246
  br label %303

303:                                              ; preds = %302, %12
  %304 = load i32*, i32** %4, align 8
  ret i32* %304
}

declare dso_local i8* @QLCNIC_FILL_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
