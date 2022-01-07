; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c___mlx4_unregister_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c___mlx4_unregister_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_port_info = type { %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32*, i32, i32, i64*, i64* }
%struct.TYPE_4__ = type { %struct.mlx4_port_info* }

@.str = private unnamed_addr constant [39 x i8] c"invalid port number (%d), aborting...\0A\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Have more references for index %d, no need to modify mac table\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Fail to set mac in port %d during unregister\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Fail to set mac in duplicate port %d during unregister\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_unregister_mac(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_port_info*, align 8
  %8 = alloca %struct.mlx4_mac_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_mac_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call i32 @mlx4_is_mf_bonded(%struct.mlx4_dev* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %20 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %22, i64 %24
  %26 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %25, i32 0, i32 0
  store %struct.mlx4_mac_table* %26, %struct.mlx4_mac_table** %12, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29, %3
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mlx4_warn(%struct.mlx4_dev* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %216

40:                                               ; preds = %29
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %42 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %44, i64 %46
  store %struct.mlx4_port_info* %47, %struct.mlx4_port_info** %7, align 8
  %48 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %49 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %48, i32 0, i32 0
  store %struct.mlx4_mac_table* %49, %struct.mlx4_mac_table** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %57 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %60 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %59, i32 0, i32 1
  %61 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %62 = call i32 @mutex_lock_nested(i32* %60, i32 %61)
  br label %71

63:                                               ; preds = %52
  %64 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %65 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %64, i32 0, i32 1
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %67, i32 0, i32 1
  %69 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %70 = call i32 @mutex_lock_nested(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %55
  br label %76

72:                                               ; preds = %40
  %73 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %74 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  br label %76

76:                                               ; preds = %72, %71
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %78 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @find_index(%struct.mlx4_dev* %77, %struct.mlx4_mac_table* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %82 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @validate_index(%struct.mlx4_dev* %81, %struct.mlx4_mac_table* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %191

87:                                               ; preds = %76
  %88 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %88, i32 0, i32 4
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %87
  %98 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %97, %87
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @mlx4_dbg(%struct.mlx4_dev* %107, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %111 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %106
  %119 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %120 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %106
  br label %191

126:                                              ; preds = %97
  %127 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %127, i32 0, i32 3
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 0, i64* %132, align 8
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %136 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %135, i32 0, i32 3
  %137 = load i64*, i64** %136, align 8
  %138 = call i64 @mlx4_set_port_mac_table(%struct.mlx4_dev* %133, i32 %134, i64* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %126
  %141 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @mlx4_warn(%struct.mlx4_dev* %141, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %126
  %145 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %146 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %190

151:                                              ; preds = %144
  %152 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %153 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 0, i32* %157, align 4
  %158 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %159 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %158, i32 0, i32 4
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %191

167:                                              ; preds = %151
  %168 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %169 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  store i64 0, i64* %173, align 8
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %177 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = call i64 @mlx4_set_port_mac_table(%struct.mlx4_dev* %174, i32 %175, i64* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %167
  %182 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @mlx4_warn(%struct.mlx4_dev* %182, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %181, %167
  %186 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %185, %144
  br label %191

191:                                              ; preds = %190, %166, %125, %86
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %199 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %198, i32 0, i32 1
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %202 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %201, i32 0, i32 1
  %203 = call i32 @mutex_unlock(i32* %202)
  br label %211

204:                                              ; preds = %194
  %205 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %12, align 8
  %206 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %205, i32 0, i32 1
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %208, i32 0, i32 1
  %210 = call i32 @mutex_unlock(i32* %209)
  br label %211

211:                                              ; preds = %204, %197
  br label %216

212:                                              ; preds = %191
  %213 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %214 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %213, i32 0, i32 1
  %215 = call i32 @mutex_unlock(i32* %214)
  br label %216

216:                                              ; preds = %36, %212, %211
  ret void
}

declare dso_local i32 @mlx4_is_mf_bonded(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @find_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i64 @validate_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i64 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
