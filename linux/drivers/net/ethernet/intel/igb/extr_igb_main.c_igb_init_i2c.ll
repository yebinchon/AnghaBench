; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_init_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_init_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.igb_adapter* }
%struct.igb_adapter = type { %struct.TYPE_12__, %struct.TYPE_8__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_7__, %struct.TYPE_11__*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@igb_i2c_algo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"igb BB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_init_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_init_i2c(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_i350, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_11__* @igb_i2c_algo to i8*), i64 8, i1 false)
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.igb_adapter* %21, %struct.igb_adapter** %24, align 8
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 2
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32* %33, i32** %37, align 8
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strlcpy(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 0
  %45 = call i32 @i2c_bit_add_bus(%struct.TYPE_12__* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %13, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
