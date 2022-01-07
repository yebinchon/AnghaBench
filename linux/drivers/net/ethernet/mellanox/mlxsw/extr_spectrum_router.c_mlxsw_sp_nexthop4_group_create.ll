; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop*, i32, i32*, i32, %struct.fib_info* }
%struct.mlxsw_sp_nexthop = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.fib_info = type { i32 }
%struct.fib_nh = type { i32 }

@nexthops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_nexthop_group* (%struct.mlxsw_sp*, %struct.fib_info*)* @mlxsw_sp_nexthop4_group_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_nexthop_group* @mlxsw_sp_nexthop4_group_create(%struct.mlxsw_sp* %0, %struct.fib_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.fib_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %8 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %9 = alloca %struct.fib_nh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.fib_info* %1, %struct.fib_info** %5, align 8
  %12 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %13 = call i32 @fib_info_num_path(%struct.fib_info* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %15 = load i32, i32* @nexthops, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @struct_size(%struct.mlxsw_sp_nexthop_group* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlxsw_sp_nexthop_group* @kzalloc(i32 %17, i32 %18)
  store %struct.mlxsw_sp_nexthop_group* %19, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %20 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %21 = icmp ne %struct.mlxsw_sp_nexthop_group* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlxsw_sp_nexthop_group* @ERR_PTR(i32 %24)
  store %struct.mlxsw_sp_nexthop_group* %25, %struct.mlxsw_sp_nexthop_group** %3, align 8
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %28 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %28, i32 0, i32 5
  store %struct.fib_info* %27, %struct.fib_info** %29, align 8
  %30 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %33, i32 0, i32 3
  store i32* @arp_tbl, i32** %34, align 8
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %36 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %37 = call i32 @mlxsw_sp_fi_is_gateway(%struct.mlxsw_sp* %35, %struct.fib_info* %36)
  %38 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %44 = call i32 @fib_info_hold(%struct.fib_info* %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %70, %26
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %52, i32 0, i32 1
  %54 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %54, i64 %56
  store %struct.mlxsw_sp_nexthop* %57, %struct.mlxsw_sp_nexthop** %8, align 8
  %58 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %58, i32 %59)
  store %struct.fib_nh* %60, %struct.fib_nh** %9, align 8
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %62 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %63 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %64 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %65 = call i32 @mlxsw_sp_nexthop4_init(%struct.mlxsw_sp* %61, %struct.mlxsw_sp_nexthop_group* %62, %struct.mlxsw_sp_nexthop* %63, %struct.fib_nh* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %86

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %75 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %76 = call i32 @mlxsw_sp_nexthop_group_insert(%struct.mlxsw_sp* %74, %struct.mlxsw_sp_nexthop_group* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %85

80:                                               ; preds = %73
  %81 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %82 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %83 = call i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp* %81, %struct.mlxsw_sp_nexthop_group* %82)
  %84 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  store %struct.mlxsw_sp_nexthop_group* %84, %struct.mlxsw_sp_nexthop_group** %3, align 8
  br label %112

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %102, %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %93, i32 0, i32 1
  %95 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %95, i64 %97
  store %struct.mlxsw_sp_nexthop* %98, %struct.mlxsw_sp_nexthop** %8, align 8
  %99 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %100 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %8, align 8
  %101 = call i32 @mlxsw_sp_nexthop4_fini(%struct.mlxsw_sp* %99, %struct.mlxsw_sp_nexthop* %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  br label %89

105:                                              ; preds = %89
  %106 = load %struct.fib_info*, %struct.fib_info** %5, align 8
  %107 = call i32 @fib_info_put(%struct.fib_info* %106)
  %108 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %109 = call i32 @kfree(%struct.mlxsw_sp_nexthop_group* %108)
  %110 = load i32, i32* %11, align 4
  %111 = call %struct.mlxsw_sp_nexthop_group* @ERR_PTR(i32 %110)
  store %struct.mlxsw_sp_nexthop_group* %111, %struct.mlxsw_sp_nexthop_group** %3, align 8
  br label %112

112:                                              ; preds = %105, %80, %22
  %113 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %3, align 8
  ret %struct.mlxsw_sp_nexthop_group* %113
}

declare dso_local i32 @fib_info_num_path(%struct.fib_info*) #1

declare dso_local %struct.mlxsw_sp_nexthop_group* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlxsw_sp_nexthop_group*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_nexthop_group* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlxsw_sp_fi_is_gateway(%struct.mlxsw_sp*, %struct.fib_info*) #1

declare dso_local i32 @fib_info_hold(%struct.fib_info*) #1

declare dso_local %struct.fib_nh* @fib_info_nh(%struct.fib_info*, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop4_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop*, %struct.fib_nh*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_insert(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop4_fini(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @fib_info_put(%struct.fib_info*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_nexthop_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
