; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_fill_by_demand_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_fill_by_demand_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.qede_stats_ah, %struct.qede_stats_bb, %struct.qede_stats_common }
%struct.qede_stats_ah = type { i32, i32 }
%struct.qede_stats_bb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qede_stats_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i32, %struct.qed_eth_stats*)* }
%struct.qed_eth_stats = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_fill_by_demand_stats(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  %3 = alloca %struct.qede_stats_common*, align 8
  %4 = alloca %struct.qed_eth_stats, align 4
  %5 = alloca %struct.qede_stats_bb*, align 8
  %6 = alloca %struct.qede_stats_ah*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %7 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store %struct.qede_stats_common* %9, %struct.qede_stats_common** %3, align 8
  %10 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %11 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.qed_eth_stats*)*, i32 (i32, %struct.qed_eth_stats*)** %13, align 8
  %15 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %16 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %14(i32 %17, %struct.qed_eth_stats* %4)
  %19 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 51
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %23 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %22, i32 0, i32 52
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 50
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %28 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %27, i32 0, i32 51
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 49
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %33 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %32, i32 0, i32 50
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 48
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %38 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %37, i32 0, i32 49
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 47
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %43 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %42, i32 0, i32 48
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 46
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %48 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %47, i32 0, i32 47
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 45
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %53 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %52, i32 0, i32 46
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 44
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %58 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %57, i32 0, i32 45
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 43
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %63 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %62, i32 0, i32 44
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 42
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %68 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %67, i32 0, i32 43
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 41
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %73 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %72, i32 0, i32 42
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 40
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %78 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %77, i32 0, i32 41
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 39
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %83 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %82, i32 0, i32 40
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 38
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %88 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %87, i32 0, i32 39
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 37
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %93 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %92, i32 0, i32 38
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 36
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %98 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %97, i32 0, i32 37
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 35
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %103 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %102, i32 0, i32 36
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 34
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %108 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %107, i32 0, i32 35
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 33
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %113 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %112, i32 0, i32 34
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 32
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %118 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %117, i32 0, i32 33
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 31
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %123 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %122, i32 0, i32 32
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 30
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %128 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %127, i32 0, i32 31
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 29
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %133 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %132, i32 0, i32 30
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 28
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %138 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %137, i32 0, i32 29
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 27
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %143 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %142, i32 0, i32 28
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 26
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %148 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %147, i32 0, i32 27
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 25
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %153 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %152, i32 0, i32 26
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 24
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %158 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %157, i32 0, i32 25
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 23
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %163 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %162, i32 0, i32 24
  store i32 %161, i32* %163, align 4
  %164 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 22
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %168 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %167, i32 0, i32 23
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 21
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %173 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %172, i32 0, i32 22
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 20
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %178 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %177, i32 0, i32 21
  store i32 %176, i32* %178, align 4
  %179 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 19
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %183 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %182, i32 0, i32 20
  store i32 %181, i32* %183, align 4
  %184 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 18
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %188 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %187, i32 0, i32 19
  store i32 %186, i32* %188, align 4
  %189 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 17
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %193 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %192, i32 0, i32 18
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 16
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %198 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %197, i32 0, i32 17
  store i32 %196, i32* %198, align 4
  %199 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 15
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %203 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %202, i32 0, i32 16
  store i32 %201, i32* %203, align 4
  %204 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 14
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %208 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %207, i32 0, i32 15
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %213 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %212, i32 0, i32 14
  store i32 %211, i32* %213, align 4
  %214 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %218 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 4
  %219 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 11
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %223 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %222, i32 0, i32 12
  store i32 %221, i32* %223, align 4
  %224 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 10
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %228 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %227, i32 0, i32 11
  store i32 %226, i32* %228, align 4
  %229 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %233 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %232, i32 0, i32 10
  store i32 %231, i32* %233, align 4
  %234 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %238 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %237, i32 0, i32 9
  store i32 %236, i32* %238, align 4
  %239 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %243 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 4
  %244 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %248 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 4
  %249 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %253 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  %254 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %258 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 4
  %259 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %263 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 4
  %264 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %268 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  %269 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %273 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  %274 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %278 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %280 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.qede_stats_common*, %struct.qede_stats_common** %3, align 8
  %283 = getelementptr inbounds %struct.qede_stats_common, %struct.qede_stats_common* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  %284 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %285 = call i64 @QEDE_IS_BB(%struct.qede_dev* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %346

287:                                              ; preds = %1
  %288 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %289 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  store %struct.qede_stats_bb* %290, %struct.qede_stats_bb** %5, align 8
  %291 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %295 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %294, i32 0, i32 10
  store i32 %293, i32* %295, align 4
  %296 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %300 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %299, i32 0, i32 9
  store i32 %298, i32* %300, align 4
  %301 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %305 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %304, i32 0, i32 8
  store i32 %303, i32* %305, align 4
  %306 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %310 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %309, i32 0, i32 7
  store i32 %308, i32* %310, align 4
  %311 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %315 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %314, i32 0, i32 6
  store i32 %313, i32* %315, align 4
  %316 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %320 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  %321 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %325 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 4
  %326 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %330 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 4
  %331 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %335 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %334, i32 0, i32 2
  store i32 %333, i32* %335, align 4
  %336 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %340 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  %341 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.qede_stats_bb*, %struct.qede_stats_bb** %5, align 8
  %345 = getelementptr inbounds %struct.qede_stats_bb, %struct.qede_stats_bb* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 4
  br label %360

346:                                              ; preds = %1
  %347 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %348 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  store %struct.qede_stats_ah* %349, %struct.qede_stats_ah** %6, align 8
  %350 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.qede_stats_ah*, %struct.qede_stats_ah** %6, align 8
  %354 = getelementptr inbounds %struct.qede_stats_ah, %struct.qede_stats_ah* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  %355 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %4, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.qede_stats_ah*, %struct.qede_stats_ah** %6, align 8
  %359 = getelementptr inbounds %struct.qede_stats_ah, %struct.qede_stats_ah* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  br label %360

360:                                              ; preds = %346, %287
  ret void
}

declare dso_local i64 @QEDE_IS_BB(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
