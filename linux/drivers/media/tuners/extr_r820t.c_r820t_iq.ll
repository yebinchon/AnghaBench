; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_iq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }
%struct.r820t_sect_type = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, %struct.r820t_sect_type*)* @r820t_iq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_iq(%struct.r820t_priv* %0, %struct.r820t_sect_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r820t_priv*, align 8
  %5 = alloca %struct.r820t_sect_type*, align 8
  %6 = alloca [3 x %struct.r820t_sect_type], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %4, align 8
  store %struct.r820t_sect_type* %1, %struct.r820t_sect_type** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %12 = call i32 @r820t_vga_adjust(%struct.r820t_priv* %11)
  %13 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %14 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %15 = call i32 @r820t_imr_cross(%struct.r820t_priv* %13, %struct.r820t_sect_type* %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %97

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 8, i32* %9, align 4
  store i32 9, i32* %10, align 4
  br label %25

24:                                               ; preds = %20
  store i32 9, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %27 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %26)
  %28 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %29 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @r820t_compre_step(%struct.r820t_priv* %28, %struct.r820t_sect_type* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %25
  %37 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %38 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %40 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %43 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 16
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @r820t_iq_tree(%struct.r820t_priv* %37, %struct.r820t_sect_type* %38, i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %36
  %52 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %53 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %52)
  %54 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %55 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @r820t_compre_step(%struct.r820t_priv* %54, %struct.r820t_sect_type* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %97

62:                                               ; preds = %51
  %63 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %64 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %65 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %66 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %69 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 16
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @r820t_iq_tree(%struct.r820t_priv* %63, %struct.r820t_sect_type* %64, i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %62
  %78 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %79 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %78)
  %80 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %81 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %82 = call i32 @r820t_section(%struct.r820t_priv* %80, %struct.r820t_sect_type* %81)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %84 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %6, i64 0, i64 0
  %85 = bitcast %struct.r820t_sect_type* %83 to i8*
  %86 = bitcast %struct.r820t_sect_type* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 16 %86, i64 8, i1 false)
  %87 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %88 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %87, i32 8, i32 0, i32 63)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %97

93:                                               ; preds = %77
  %94 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %95 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %94, i32 9, i32 0, i32 63)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %91, %75, %60, %49, %34, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @r820t_vga_adjust(%struct.r820t_priv*) #1

declare dso_local i32 @r820t_imr_cross(%struct.r820t_priv*, %struct.r820t_sect_type*, i32*) #1

declare dso_local i32 @r820t_compre_cor(%struct.r820t_sect_type*) #1

declare dso_local i32 @r820t_compre_step(%struct.r820t_priv*, %struct.r820t_sect_type*, i32) #1

declare dso_local i32 @r820t_iq_tree(%struct.r820t_priv*, %struct.r820t_sect_type*, i32, i32, i32) #1

declare dso_local i32 @r820t_section(%struct.r820t_priv*, %struct.r820t_sect_type*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @r820t_write_reg_mask(%struct.r820t_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
