; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_recycle_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_recycle_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.rxdb*, %struct.rxf_fifo }
%struct.rxdb = type { i32 }
%struct.rxf_fifo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rxd_desc = type { i32 }
%struct.rxf_desc = type { i8*, i8*, i8*, i32, i8* }
%struct.rx_map = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"priv=%p rxdd=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"db=%p f=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dm=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"wrapped descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.rxd_desc*)* @bdx_recycle_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_recycle_skb(%struct.bdx_priv* %0, %struct.rxd_desc* %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.rxd_desc*, align 8
  %5 = alloca %struct.rxf_desc*, align 8
  %6 = alloca %struct.rx_map*, align 8
  %7 = alloca %struct.rxf_fifo*, align 8
  %8 = alloca %struct.rxdb*, align 8
  %9 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.rxd_desc* %1, %struct.rxd_desc** %4, align 8
  %10 = load i32, i32* @ENTER, align 4
  %11 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %12 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %13 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.bdx_priv* %11, %struct.rxd_desc* %12)
  %14 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %15 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %14, i32 0, i32 1
  store %struct.rxf_fifo* %15, %struct.rxf_fifo** %7, align 8
  %16 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %16, i32 0, i32 0
  %18 = load %struct.rxdb*, %struct.rxdb** %17, align 8
  store %struct.rxdb* %18, %struct.rxdb** %8, align 8
  %19 = load %struct.rxdb*, %struct.rxdb** %8, align 8
  %20 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %21 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.rxdb* %19, %struct.rxf_fifo* %20)
  %22 = load %struct.rxdb*, %struct.rxdb** %8, align 8
  %23 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %24 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %22, i32 %25)
  store %struct.rx_map* %26, %struct.rx_map** %6, align 8
  %27 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %28 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.rx_map* %27)
  %29 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %30 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %34 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.rxf_desc*
  store %struct.rxf_desc* %39, %struct.rxf_desc** %5, align 8
  %40 = call i8* @CPU_CHIP_SWAP32(i32 65539)
  %41 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %42 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %44 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %47 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %49 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @L32_64(i32 %50)
  %52 = call i8* @CPU_CHIP_SWAP32(i32 %51)
  %53 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %54 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %56 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @H32_64(i32 %57)
  %59 = call i8* @CPU_CHIP_SWAP32(i32 %58)
  %60 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %61 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %63 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @CPU_CHIP_SWAP32(i32 %65)
  %67 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %68 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %70 = call i32 @print_rxfd(%struct.rxf_desc* %69)
  %71 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %72 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 40
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %79 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %83 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %81, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %2
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %95 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %101 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %105 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %109 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %107, %111
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @memcpy(i32 %103, i32 %112, i32 %113)
  %115 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %99, %92
  br label %117

117:                                              ; preds = %116, %2
  %118 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @L32_64(i32) #1

declare dso_local i32 @H32_64(i32) #1

declare dso_local i32 @print_rxfd(%struct.rxf_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
