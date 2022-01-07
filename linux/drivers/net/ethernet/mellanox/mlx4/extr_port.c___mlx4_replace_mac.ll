; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c___mlx4_replace_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c___mlx4_replace_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { i32, %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32, i8** }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MLX4_MAC_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed adding MAC: 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed adding duplicate MAC: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_replace_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_port_info*, align 8
  %10 = alloca %struct.mlx4_mac_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.mlx4_mac_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %17 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %19, i64 %20
  store %struct.mlx4_port_info* %21, %struct.mlx4_port_info** %9, align 8
  %22 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %22, i32 0, i32 1
  store %struct.mlx4_mac_table* %23, %struct.mlx4_mac_table** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %30 = call i32 @mlx4_is_mf_bonded(%struct.mlx4_dev* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %39, i64 %40
  %42 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %41, i32 0, i32 1
  store %struct.mlx4_mac_table* %42, %struct.mlx4_mac_table** %15, align 8
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %4
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %50 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %53 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %52, i32 0, i32 0
  %54 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %55 = call i32 @mutex_lock_nested(i32* %53, i32 %54)
  br label %64

56:                                               ; preds = %45
  %57 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %58 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %61 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %60, i32 0, i32 0
  %62 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %63 = call i32 @mutex_lock_nested(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  br label %69

65:                                               ; preds = %4
  %66 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %67 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  br label %69

69:                                               ; preds = %65, %64
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %71 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @validate_index(%struct.mlx4_dev* %70, %struct.mlx4_mac_table* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %145

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MLX4_MAC_VALID, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @cpu_to_be64(i32 %80)
  %82 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %83 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %91 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %88, i64 %89, i8** %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %77
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @mlx4_err(%struct.mlx4_dev* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %100)
  %102 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %103 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* null, i8** %107, align 8
  br label %144

108:                                              ; preds = %77
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MLX4_MAC_VALID, align 4
  %114 = or i32 %112, %113
  %115 = call i8* @cpu_to_be64(i32 %114)
  %116 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %117 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* %115, i8** %121, align 8
  %122 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %125 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %122, i64 %123, i8** %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %111
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = call i32 @mlx4_err(%struct.mlx4_dev* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %137 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %136, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* null, i8** %141, align 8
  br label %142

142:                                              ; preds = %131, %111
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %97
  br label %145

145:                                              ; preds = %144, %76
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %145
  %149 = load i64, i64* %6, align 8
  %150 = icmp eq i64 %149, 2
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %153 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %156 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  br label %165

158:                                              ; preds = %148
  %159 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %15, align 8
  %160 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %163 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  br label %165

165:                                              ; preds = %158, %151
  br label %170

166:                                              ; preds = %145
  %167 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %168 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %166, %165
  %171 = load i32, i32* %12, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mf_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @validate_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i64, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
