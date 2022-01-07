; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_buffers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_buffers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@CELL_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_HEADROOM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_SB_ING_TC_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_SB_EG_TC_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_buffers_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CELL_SIZE, align 4
  %12 = call i32 @MLXSW_CORE_RES_VALID(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %159

17:                                               ; preds = %1
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX_BUFFER_SIZE, align 4
  %22 = call i32 @MLXSW_CORE_RES_VALID(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %159

27:                                               ; preds = %17
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MAX_HEADROOM_SIZE, align 4
  %32 = call i32 @MLXSW_CORE_RES_VALID(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %159

37:                                               ; preds = %27
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_5__* @kzalloc(i32 16, i32 %38)
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %40, i32 0, i32 0
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %159

49:                                               ; preds = %37
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CELL_SIZE, align 4
  %54 = call i8* @MLXSW_CORE_RES_GET(i32 %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAX_BUFFER_SIZE, align 4
  %64 = call i8* @MLXSW_CORE_RES_GET(i32 %62, i32 %63)
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX_HEADROOM_SIZE, align 4
  %73 = call i8* @MLXSW_CORE_RES_GET(i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %75, %80
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %87 = call i32 @mlxsw_sp_sb_ports_init(%struct.mlxsw_sp* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %49
  br label %153

91:                                               ; preds = %49
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %93 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlxsw_sp_sb_prs_init(%struct.mlxsw_sp* %92, i32 %97, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %150

107:                                              ; preds = %91
  %108 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %109 = call i32 @mlxsw_sp_cpu_port_sb_cms_init(%struct.mlxsw_sp* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %149

113:                                              ; preds = %107
  %114 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %115 = call i32 @mlxsw_sp_cpu_port_sb_pms_init(%struct.mlxsw_sp* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %148

119:                                              ; preds = %113
  %120 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %121 = call i32 @mlxsw_sp_sb_mms_init(%struct.mlxsw_sp* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %147

125:                                              ; preds = %119
  %126 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %127 = call i32 @mlxsw_sp_pool_count(%struct.mlxsw_sp* %126, i32* %5, i32* %6)
  %128 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %129 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @priv_to_devlink(i32 %130)
  %132 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %133 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @MLXSW_SP_SB_ING_TC_COUNT, align 4
  %140 = load i32, i32* @MLXSW_SP_SB_EG_TC_COUNT, align 4
  %141 = call i32 @devlink_sb_register(i32 %131, i32 0, i8* %136, i32 %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %125
  br label %146

145:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %159

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %124
  br label %148

148:                                              ; preds = %147, %118
  br label %149

149:                                              ; preds = %148, %112
  br label %150

150:                                              ; preds = %149, %106
  %151 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %152 = call i32 @mlxsw_sp_sb_ports_fini(%struct.mlxsw_sp* %151)
  br label %153

153:                                              ; preds = %150, %90
  %154 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %155 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = call i32 @kfree(%struct.TYPE_5__* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %145, %46, %34, %24, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i8* @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @mlxsw_sp_sb_ports_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_sb_prs_init(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_cpu_port_sb_cms_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_cpu_port_sb_pms_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_sb_mms_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_pool_count(%struct.mlxsw_sp*, i32*, i32*) #1

declare dso_local i32 @devlink_sb_register(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @priv_to_devlink(i32) #1

declare dso_local i32 @mlxsw_sp_sb_ports_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
