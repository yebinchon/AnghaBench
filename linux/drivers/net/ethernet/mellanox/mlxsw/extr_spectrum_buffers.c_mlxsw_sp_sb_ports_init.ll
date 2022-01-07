; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_ports_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_ports_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr* }
%struct.mlxsw_sp_sb_pr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_sb_ports_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_ports_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_sb_pr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mlxsw_core_max_ports(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.mlxsw_sp_sb_pr*
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.mlxsw_sp_sb_pr* %15, %struct.mlxsw_sp_sb_pr** %19, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %23, align 8
  %25 = icmp ne %struct.mlxsw_sp_sb_pr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %1
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.mlxsw_sp_sb_pr*
  store %struct.mlxsw_sp_sb_pr* %37, %struct.mlxsw_sp_sb_pr** %5, align 8
  %38 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %5, align 8
  %39 = icmp ne %struct.mlxsw_sp_sb_pr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %98

43:                                               ; preds = %29
  %44 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %5, align 8
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store %struct.mlxsw_sp_sb_pr* %44, %struct.mlxsw_sp_sb_pr** %48, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %68, %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %59, i64 %61
  %63 = call i32 @mlxsw_sp_sb_port_init(%struct.mlxsw_sp* %54, %struct.mlxsw_sp_sb_pr* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %72

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %106

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %88, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %83, i64 %85
  %87 = call i32 @mlxsw_sp_sb_port_fini(%struct.mlxsw_sp_sb_pr* %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %75

91:                                               ; preds = %75
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %95, align 8
  %97 = call i32 @kfree(%struct.mlxsw_sp_sb_pr* %96)
  br label %98

98:                                               ; preds = %91, %40
  %99 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %102, align 8
  %104 = call i32 @kfree(%struct.mlxsw_sp_sb_pr* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %71, %26
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sb_port_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_sb_pr*) #1

declare dso_local i32 @mlxsw_sp_sb_port_fini(%struct.mlxsw_sp_sb_pr*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_sb_pr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
