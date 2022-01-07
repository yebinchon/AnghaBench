; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_iq_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_iq_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }
%struct.r820t_sect_type = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, %struct.r820t_sect_type*, i32, i32, i32)* @r820t_iq_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_iq_tree(%struct.r820t_priv* %0, %struct.r820t_sect_type* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r820t_priv*, align 8
  %8 = alloca %struct.r820t_sect_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %7, align 8
  store %struct.r820t_sect_type* %1, %struct.r820t_sect_type** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 9, i32* %15, align 4
  br label %20

19:                                               ; preds = %5
  store i32 8, i32* %15, align 4
  br label %20

20:                                               ; preds = %19, %18
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %122, %20
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %125

24:                                               ; preds = %21
  %25 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @r820t_write_reg(%struct.r820t_priv* %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %126

33:                                               ; preds = %24
  %34 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @r820t_write_reg(%struct.r820t_priv* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %126

42:                                               ; preds = %33
  %43 = load %struct.r820t_priv*, %struct.r820t_priv** %7, align 8
  %44 = call i32 @r820t_multi_read(%struct.r820t_priv* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %126

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %51, i64 %53
  %55 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %60, i64 %62
  %64 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %66, i64 %68
  %70 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  br label %84

71:                                               ; preds = %49
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %73, i64 %75
  %77 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %76, i32 0, i32 2
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %79, i64 %81
  %83 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %58
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %121

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 31
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 31
  %100 = sub nsw i32 2, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 192
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %115

110:                                              ; preds = %97
  %111 = load i32, i32* %14, align 4
  %112 = or i32 32, %111
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %110, %104
  br label %119

116:                                              ; preds = %93
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %116, %115
  br label %120

120:                                              ; preds = %119, %90
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %21

125:                                              ; preds = %21
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %47, %40, %31
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @r820t_multi_read(%struct.r820t_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
