; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, i32, i32 }
%struct.switchdev_obj_port_mdb = type { i32*, i32 }

@ALU_STAT_INDEX_S = common dso_local global i32 0, align 4
@ALU_STAT_READ = common dso_local global i32 0, align 4
@ALU_STAT_START = common dso_local global i32 0, align 4
@REG_SW_ALU_STAT_CTRL__4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read ALU STATIC\0A\00", align 1
@ALU_V_STATIC_VALID = common dso_local global i32 0, align 4
@ALU_V_FID_S = common dso_local global i32 0, align 4
@ALU_V_MAC_ADDR_HI = common dso_local global i32 0, align 4
@ALU_V_USE_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_mdb*)* @ksz9477_port_mdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_port_mdb_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_mdb* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %7 = alloca %struct.ksz_device*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_mdb* %2, %struct.switchdev_obj_port_mdb** %6, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.ksz_device*, %struct.ksz_device** %14, align 8
  store %struct.ksz_device* %15, %struct.ksz_device** %7, align 8
  %16 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %17 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %23 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %21, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %29 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %35 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %33, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %42 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %48 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %56 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %118, %3
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %61 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ALU_STAT_INDEX_S, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @ALU_STAT_READ, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ALU_STAT_START, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %73 = load i32, i32* @REG_SW_ALU_STAT_CTRL__4, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ksz_write32(%struct.ksz_device* %72, i32 %73, i32 %74)
  %76 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %77 = call i64 @ksz9477_wait_alu_sta_ready(%struct.ksz_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %81 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %179

84:                                               ; preds = %64
  %85 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %87 = call i32 @ksz9477_read_table(%struct.ksz_device* %85, i32* %86)
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = load i32, i32* @ALU_V_STATIC_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %84
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ALU_V_FID_S, align 4
  %97 = ashr i32 %95, %96
  %98 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %99 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ALU_V_MAC_ADDR_HI, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %121

115:                                              ; preds = %109, %102, %93
  br label %117

116:                                              ; preds = %84
  br label %121

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %58

121:                                              ; preds = %116, %114, %58
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %124 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %179

128:                                              ; preds = %121
  %129 = load i32, i32* @ALU_V_STATIC_VALID, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %129, i32* %130, align 16
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @BIT(i32 %131)
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %137 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %128
  %141 = load i32, i32* @ALU_V_USE_FID, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %128
  %146 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %147 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ALU_V_FID_S, align 4
  %150 = shl i32 %148, %149
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %12, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %156, i32* %157, align 4
  %158 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %160 = call i32 @ksz9477_write_table(%struct.ksz_device* %158, i32* %159)
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @ALU_STAT_INDEX_S, align 4
  %163 = shl i32 %161, %162
  %164 = load i32, i32* @ALU_STAT_START, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %9, align 4
  %166 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %167 = load i32, i32* @REG_SW_ALU_STAT_CTRL__4, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @ksz_write32(%struct.ksz_device* %166, i32 %167, i32 %168)
  %170 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %171 = call i64 @ksz9477_wait_alu_sta_ready(%struct.ksz_device* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %145
  %174 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %175 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @dev_dbg(i32 %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %145
  br label %179

179:                                              ; preds = %178, %127, %79
  %180 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %181 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %180, i32 0, i32 1
  %182 = call i32 @mutex_unlock(i32* %181)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write32(%struct.ksz_device*, i32, i32) #1

declare dso_local i64 @ksz9477_wait_alu_sta_ready(%struct.ksz_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ksz9477_read_table(%struct.ksz_device*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ksz9477_write_table(%struct.ksz_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
