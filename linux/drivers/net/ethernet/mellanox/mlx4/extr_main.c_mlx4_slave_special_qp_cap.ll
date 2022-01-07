; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_slave_special_qp_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_slave_special_qp_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.mlx4_caps }
%struct.mlx4_caps = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.mlx4_func_cap = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for special qps cap\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"QUERY_FUNC_CAP port command failed for port %d, aborting (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"QUERY_PORT command failed for port %d, aborting (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_slave_special_qp_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_slave_special_qp_cap(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_func_cap*, align 8
  %4 = alloca %struct.mlx4_caps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  store %struct.mlx4_func_cap* null, %struct.mlx4_func_cap** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %7, i32 0, i32 0
  store %struct.mlx4_caps* %8, %struct.mlx4_caps** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlx4_func_cap* @kzalloc(i32 8, i32 %9)
  store %struct.mlx4_func_cap* %10, %struct.mlx4_func_cap** %3, align 8
  %11 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kcalloc(i32 %13, i32 4, i32 %14)
  %16 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %16, i32 0, i32 6
  store i32* %15, i32** %17, align 8
  %18 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %3, align 8
  %19 = icmp ne %struct.mlx4_func_cap* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %27 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %109

30:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %105, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %31
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %3, align 8
  %41 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %38, i32 %39, %struct.mlx4_func_cap* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  br label %109

49:                                               ; preds = %37
  %50 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %54 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  %60 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %61 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %77 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.mlx4_caps*, %struct.mlx4_caps** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev* %82, i32 %83, i32* %89, i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %49
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %109

104:                                              ; preds = %49
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %31

108:                                              ; preds = %31
  br label %109

109:                                              ; preds = %108, %99, %44, %25
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %114 = call i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %3, align 8
  %117 = call i32 @kfree(%struct.mlx4_func_cap* %116)
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.mlx4_func_cap* @kzalloc(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev*, i32, %struct.mlx4_func_cap*) #1

declare dso_local i32 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev*, i32, i32*, i32*) #1

declare dso_local i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_func_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
