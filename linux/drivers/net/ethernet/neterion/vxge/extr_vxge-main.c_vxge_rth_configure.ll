; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rth_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rth_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_rth_hash_types = type { i32, i32, i32, i32, i32, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RTH indirection table configuration failed for vpath:%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RTH configuration failed for vpath:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*)* @vxge_rth_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_rth_configure(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_hw_rth_hash_types, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  %9 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = bitcast [256 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 1024, i1 false)
  %11 = bitcast [256 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 1024, i1 false)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %15 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %27 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %25, %28
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %38 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %41 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %45 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %46 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @vxge_hw_vpath_rts_rth_itable_set(i32 %39, i32 %42, i32* %43, i32* %44, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @VXGE_HW_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load i32, i32* @VXGE_ERR, align 4
  %55 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %56 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vxge_debug_init(i32 %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %139

63:                                               ; preds = %36
  %64 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %65 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 5
  store i32 %67, i32* %68, align 4
  %69 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %70 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 4
  store i32 %72, i32* %73, align 4
  %74 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %75 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %80 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %85 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %90 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.vxge_hw_rth_hash_types, %struct.vxge_hw_rth_hash_types* %5, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %134, %63
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %97 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %94
  %101 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %102 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %110 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %114 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @vxge_hw_vpath_rts_rth_set(i32 %108, i32 %112, %struct.vxge_hw_rth_hash_types* %5, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @VXGE_HW_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %100
  %122 = load i32, i32* @VXGE_ERR, align 4
  %123 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %124 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @vxge_debug_init(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %139

133:                                              ; preds = %100
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %94

137:                                              ; preds = %94
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %121, %53
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vxge_hw_vpath_rts_rth_itable_set(i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #2

declare dso_local i32 @vxge_hw_vpath_rts_rth_set(i32, i32, %struct.vxge_hw_rth_hash_types*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
