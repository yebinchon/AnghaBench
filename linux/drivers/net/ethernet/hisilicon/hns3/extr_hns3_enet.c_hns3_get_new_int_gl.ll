; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_new_int_gl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_new_int_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring_group = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.hns3_enet_tqp_vector* }
%struct.hns3_enet_tqp_vector = type { i32 }

@HNS3_INT_GL_50K = common dso_local global i8* null, align 8
@HNS3_INT_GL_20K = common dso_local global i64 0, align 8
@HNS3_INT_GL_18K = common dso_local global i64 0, align 8
@HNS3_INT_GL_8K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring_group*)* @hns3_get_new_int_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_new_int_gl(%struct.hns3_enet_ring_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_enet_ring_group*, align 8
  %4 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %5 = alloca i64, align 8
  store %struct.hns3_enet_ring_group* %0, %struct.hns3_enet_ring_group** %3, align 8
  %6 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %7 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %13 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %15, align 8
  store %struct.hns3_enet_tqp_vector* %16, %struct.hns3_enet_tqp_vector** %4, align 8
  %17 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %73

22:                                               ; preds = %11
  %23 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %24 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i8*, i8** @HNS3_INT_GL_50K, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %31 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %34 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 130, i32* %35, align 8
  store i32 1, i32* %2, align 4
  br label %73

36:                                               ; preds = %22
  %37 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %38 = call i32 @hns3_get_new_flow_lvl(%struct.hns3_enet_ring_group* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %73

41:                                               ; preds = %36
  %42 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %43 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %47 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %59 [
    i32 130, label %50
    i32 129, label %53
    i32 131, label %55
    i32 128, label %57
  ]

50:                                               ; preds = %41
  %51 = load i8*, i8** @HNS3_INT_GL_50K, align 8
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %5, align 8
  br label %60

53:                                               ; preds = %41
  %54 = load i64, i64* @HNS3_INT_GL_20K, align 8
  store i64 %54, i64* %5, align 8
  br label %60

55:                                               ; preds = %41
  %56 = load i64, i64* @HNS3_INT_GL_18K, align 8
  store i64 %56, i64* %5, align 8
  br label %60

57:                                               ; preds = %41
  %58 = load i64, i64* @HNS3_INT_GL_8K, align 8
  store i64 %58, i64* %5, align 8
  br label %60

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %57, %55, %53, %50
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.hns3_enet_ring_group*, %struct.hns3_enet_ring_group** %3, align 8
  %70 = getelementptr inbounds %struct.hns3_enet_ring_group, %struct.hns3_enet_ring_group* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  store i32 1, i32* %2, align 4
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67, %40, %27, %21, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @hns3_get_new_flow_lvl(%struct.hns3_enet_ring_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
