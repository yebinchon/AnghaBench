; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_config_profile = type { i32 }
%struct.mlxsw_res = type { i32 }
%struct.mlxsw_i2c = type { %struct.TYPE_4__, %struct.mlxsw_core* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxsw_core*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*)* @mlxsw_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_i2c_init(i8* %0, %struct.mlxsw_core* %1, %struct.mlxsw_config_profile* %2, %struct.mlxsw_res* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_config_profile*, align 8
  %9 = alloca %struct.mlxsw_res*, align 8
  %10 = alloca %struct.mlxsw_i2c*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.mlxsw_core* %1, %struct.mlxsw_core** %7, align 8
  store %struct.mlxsw_config_profile* %2, %struct.mlxsw_config_profile** %8, align 8
  store %struct.mlxsw_res* %3, %struct.mlxsw_res** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mlxsw_i2c*
  store %struct.mlxsw_i2c* %14, %struct.mlxsw_i2c** %10, align 8
  %15 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %16 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %10, align 8
  %17 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %16, i32 0, i32 1
  store %struct.mlxsw_core* %15, %struct.mlxsw_core** %17, align 8
  %18 = call i8* (...) @mlxsw_cmd_mbox_alloc()
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @mlxsw_cmd_query_fw(%struct.mlxsw_core* %25, i8* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_major_get(i8* %32)
  %34 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %10, align 8
  %35 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_minor_get(i8* %38)
  %40 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get(i8* %44)
  %46 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %10, align 8
  %47 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %53 = call i32 @mlxsw_core_resources_query(%struct.mlxsw_core* %50, i8* %51, %struct.mlxsw_res* %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %31, %30
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @mlxsw_cmd_mbox_free(i8* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @mlxsw_cmd_mbox_alloc(...) #1

declare dso_local i32 @mlxsw_cmd_query_fw(%struct.mlxsw_core*, i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_major_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_minor_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get(i8*) #1

declare dso_local i32 @mlxsw_core_resources_query(%struct.mlxsw_core*, i8*, %struct.mlxsw_res*) #1

declare dso_local i32 @mlxsw_cmd_mbox_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
