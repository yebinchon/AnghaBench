; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arfs_tuple = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.flow_keys = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arfs_tuple*, %struct.flow_keys*)* @arfs_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arfs_cmp(%struct.arfs_tuple* %0, %struct.flow_keys* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arfs_tuple*, align 8
  %5 = alloca %struct.flow_keys*, align 8
  store %struct.arfs_tuple* %0, %struct.arfs_tuple** %4, align 8
  store %struct.flow_keys* %1, %struct.flow_keys** %5, align 8
  %6 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %7 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %10 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %16 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %19 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %14
  %25 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %26 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %29 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %94

34:                                               ; preds = %24
  %35 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %36 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_IP, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %43 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %46 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %53 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %56 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  br label %61

61:                                               ; preds = %51, %41
  %62 = phi i1 [ false, %41 ], [ %60, %51 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %94

64:                                               ; preds = %34
  %65 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %66 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETH_P_IPV6, align 4
  %69 = call i64 @htons(i32 %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %73 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %72, i32 0, i32 6
  %74 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %75 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = call i32 @memcmp(i32* %73, i32* %77, i32 4)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %71
  %81 = load %struct.arfs_tuple*, %struct.arfs_tuple** %4, align 8
  %82 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %81, i32 0, i32 5
  %83 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %84 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @memcmp(i32* %82, i32* %86, i32 4)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %80, %71
  %91 = phi i1 [ false, %71 ], [ %89, %80 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %90, %61, %33, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
