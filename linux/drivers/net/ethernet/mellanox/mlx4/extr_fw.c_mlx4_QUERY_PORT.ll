; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_PORT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VL_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MTU_WIDTH_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@QUERY_PORT_ETH_MTU_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAC_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_GID_PKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_MACVLAN_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MAX_VL_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_MTU_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_SUPPORTED_TYPE_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_TRANS_CODE_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_TRANS_VENDOR_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_WAVELENGTH_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_WIDTH_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_PORT(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_port_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_port_cap*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_port_cap* %2, %struct.mlx4_port_cap** %7, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %4, align 4
  br label %209

21:                                               ; preds = %3
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %21
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %37 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %38 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %39 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %32, i32 0, i32 %35, i32 0, i32 0, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %204

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @QUERY_DEV_CAP_VL_PORT_OFFSET, align 4
  %47 = call i32 @MLX4_GET(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 4
  %50 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @QUERY_DEV_CAP_MTU_WIDTH_OFFSET, align 4
  %55 = call i32 @MLX4_GET(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 4
  %58 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 15
  %62 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @QUERY_DEV_CAP_MAX_GID_OFFSET, align 4
  %67 = call i32 @MLX4_GET(i32 %64, i32* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 15
  %70 = shl i32 1, %69
  %71 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %72 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @QUERY_DEV_CAP_MAX_PKEY_OFFSET, align 4
  %76 = call i32 @MLX4_GET(i32 %73, i32* %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 1, %78
  %80 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %81 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %203

82:                                               ; preds = %21
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %84 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %85 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %89 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %90 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %91 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %83, i32 0, i32 %86, i32 %87, i32 0, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %204

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @MLX4_GET(i32 %96, i32* %97, i32 0)
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 128
  %101 = ashr i32 %100, 7
  %102 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %103 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 3
  %106 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %107 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 3
  %110 = and i32 %109, 1
  %111 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %112 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 1
  %116 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 5
  %120 = and i32 %119, 1
  %121 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %122 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @MLX4_GET(i32 %123, i32* %124, i32 1)
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 15
  %128 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %129 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @MLX4_GET(i32 %130, i32* %131, i32 6)
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 15
  %135 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @MLX4_GET(i32 %137, i32* %138, i32 7)
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %140, 4
  %142 = shl i32 1, %141
  %143 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %144 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 15
  %147 = shl i32 1, %146
  %148 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %149 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @MLX4_GET(i32 %150, i32* %151, i32 11)
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, 15
  %155 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %156 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = ashr i32 %157, 4
  %159 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %160 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @MLX4_GET(i32 %161, i32* %162, i32 10)
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, 15
  %166 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %167 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %10, align 4
  %169 = ashr i32 %168, 4
  %170 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %171 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 4
  %172 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %173 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %172, i32 0, i32 13
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @MLX4_GET(i32 %174, i32* %175, i32 2)
  %177 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %178 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %177, i32 0, i32 14
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @MLX4_GET(i32 %179, i32* %180, i32 16)
  %182 = load i32, i32* %11, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @MLX4_GET(i32 %182, i32* %183, i32 24)
  %185 = load i32, i32* %11, align 4
  %186 = ashr i32 %185, 24
  %187 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %188 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %187, i32 0, i32 15
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, 16777215
  %191 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %192 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %191, i32 0, i32 16
  store i32 %190, i32* %192, align 4
  %193 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %194 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %193, i32 0, i32 17
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @MLX4_GET(i32 %195, i32* %196, i32 28)
  %198 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %7, align 8
  %199 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %198, i32 0, i32 18
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @MLX4_GET(i32 %200, i32* %201, i32 32)
  br label %203

203:                                              ; preds = %95, %43
  br label %204

204:                                              ; preds = %203, %94, %42
  %205 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %206 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %207 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %205, %struct.mlx4_cmd_mailbox* %206)
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %204, %18
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
