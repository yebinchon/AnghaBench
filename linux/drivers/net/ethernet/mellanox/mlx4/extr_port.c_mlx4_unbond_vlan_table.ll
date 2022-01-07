; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_unbond_vlan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_unbond_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vlan_table = type { i64*, i32*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_vlan_table }

@MLX4_MAX_VLAN_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"vlan table is in an unexpected state when trying to unbond\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to unmirror VLAN tables for port 1(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to unmirror VLAN tables for port 2(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_unbond_vlan_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_vlan_table*, align 8
  %4 = alloca %struct.mlx4_vlan_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %11 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.mlx4_vlan_table* %15, %struct.mlx4_vlan_table** %3, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %17 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.mlx4_vlan_table* %21, %struct.mlx4_vlan_table** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %54, %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %39, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %50 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %49, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %154

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %28

57:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %117, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %58
  %63 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %117

72:                                               ; preds = %62
  %73 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %72
  %88 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %87, %72
  %95 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 0, i32* %100, align 4
  %101 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %94
  %110 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %111 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 0, i64* %115, align 8
  store i32 1, i32* %9, align 4
  br label %116

116:                                              ; preds = %109, %94
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %58

120:                                              ; preds = %58
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %125 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %126 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %124, i32 1, i64* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %123
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %141 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %142 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %140, i32 2, i64* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %147, %139
  br label %153

153:                                              ; preds = %152, %136
  br label %154

154:                                              ; preds = %153, %48
  %155 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %4, align 8
  %156 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %155, i32 0, i32 2
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %3, align 8
  %159 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %158, i32 0, i32 2
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
