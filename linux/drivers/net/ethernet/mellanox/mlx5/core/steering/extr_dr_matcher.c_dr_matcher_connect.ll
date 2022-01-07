; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_table_rx_tx* }
%struct.mlx5dr_ste_htbl = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.mlx5dr_ste_htbl* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5dr_table_rx_tx = type { %struct.mlx5dr_ste_htbl*, i32, %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_htbl_connect_info = type { i64, %struct.mlx5dr_ste_htbl*, i32 }

@CONNECT_HIT = common dso_local global i64 0, align 8
@CONNECT_MISS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx*)* @dr_matcher_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_connect(%struct.mlx5dr_domain* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx* %2, %struct.mlx5dr_matcher_rx_tx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %8 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %10 = alloca %struct.mlx5dr_table_rx_tx*, align 8
  %11 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %12 = alloca %struct.mlx5dr_htbl_connect_info, align 8
  %13 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  store %struct.mlx5dr_matcher_rx_tx* %2, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  store %struct.mlx5dr_matcher_rx_tx* %3, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  %15 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %15, i32 0, i32 2
  %17 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %16, align 8
  store %struct.mlx5dr_table_rx_tx* %17, %struct.mlx5dr_table_rx_tx** %10, align 8
  %18 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %10, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %18, i32 0, i32 2
  %20 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %19, align 8
  store %struct.mlx5dr_domain_rx_tx* %20, %struct.mlx5dr_domain_rx_tx** %11, align 8
  %21 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %22 = icmp ne %struct.mlx5dr_matcher_rx_tx* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i64, i64* @CONNECT_HIT, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %26, i32 0, i32 0
  %28 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %27, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 1
  store %struct.mlx5dr_ste_htbl* %28, %struct.mlx5dr_ste_htbl** %29, align 8
  br label %38

30:                                               ; preds = %4
  %31 = load i8*, i8** @CONNECT_MISS, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %30, %23
  %39 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %40 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %11, align 8
  %41 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %41, i32 0, i32 1
  %43 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %42, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CONNECT_HIT, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %39, %struct.mlx5dr_domain_rx_tx* %40, %struct.mlx5dr_ste_htbl* %43, %struct.mlx5dr_htbl_connect_info* %12, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %141

54:                                               ; preds = %38
  %55 = load i8*, i8** @CONNECT_MISS, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %58, i32 0, i32 1
  %60 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %59, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %67 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %11, align 8
  %68 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %68, i32 0, i32 0
  %70 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %69, align 8
  %71 = call i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %66, %struct.mlx5dr_domain_rx_tx* %67, %struct.mlx5dr_ste_htbl* %70, %struct.mlx5dr_htbl_connect_info* %12, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %141

76:                                               ; preds = %54
  %77 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  %78 = icmp ne %struct.mlx5dr_matcher_rx_tx* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %80, i32 0, i32 1
  %82 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %81, align 8
  store %struct.mlx5dr_ste_htbl* %82, %struct.mlx5dr_ste_htbl** %13, align 8
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %10, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %84, i32 0, i32 0
  %86 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %85, align 8
  store %struct.mlx5dr_ste_htbl* %86, %struct.mlx5dr_ste_htbl** %13, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i64, i64* @CONNECT_HIT, align 8
  %89 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %90, i32 0, i32 0
  %92 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %91, align 8
  %93 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %12, i32 0, i32 1
  store %struct.mlx5dr_ste_htbl* %92, %struct.mlx5dr_ste_htbl** %93, align 8
  %94 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %95 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %11, align 8
  %96 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %13, align 8
  %97 = call i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %94, %struct.mlx5dr_domain_rx_tx* %95, %struct.mlx5dr_ste_htbl* %96, %struct.mlx5dr_htbl_connect_info* %12, i32 1)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %5, align 4
  br label %141

102:                                              ; preds = %87
  %103 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %13, align 8
  %104 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %107 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %106, i32 0, i32 0
  %108 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %107, align 8
  %109 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %108, i32 0, i32 1
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %111 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %110, i32 0, i32 0
  %112 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %111, align 8
  %113 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %13, align 8
  %114 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store %struct.mlx5dr_ste_htbl* %112, %struct.mlx5dr_ste_htbl** %117, align 8
  %118 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %119 = icmp ne %struct.mlx5dr_matcher_rx_tx* %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %102
  %121 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %122 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %121, i32 0, i32 1
  %123 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %122, align 8
  %124 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %127 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %126, i32 0, i32 0
  %128 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %127, align 8
  %129 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %128, i32 0, i32 1
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %129, align 8
  %130 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %131 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %130, i32 0, i32 0
  %132 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %131, align 8
  %133 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %134 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %133, i32 0, i32 1
  %135 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %134, align 8
  %136 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store %struct.mlx5dr_ste_htbl* %132, %struct.mlx5dr_ste_htbl** %139, align 8
  br label %140

140:                                              ; preds = %120, %102
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %100, %74, %52
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_htbl_connect_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
