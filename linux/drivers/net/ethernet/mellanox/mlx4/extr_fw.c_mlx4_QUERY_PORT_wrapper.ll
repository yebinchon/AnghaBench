; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_PORT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, i32* }
%struct.mlx4_vhcr = type { i32, i64 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx4_port_cap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_PORT_MAC_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_SUPPORTED_TYPE_OFFSET = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_ENABLE = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_DISABLE = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_AUTO = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_ETH = common dso_local global i32 0, align 4
@MLX4_PORT_LINK_UP_MASK = common dso_local global i32 0, align 4
@MLX4_VF_PORT_NO_LINK_SENSE_MASK = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.mlx4_port_cap, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %24 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %23)
  store %struct.mlx4_priv* %24, %struct.mlx4_priv** %14, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %28 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 255
  %31 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %25, i32 %26, i32 %30)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %228

37:                                               ; preds = %6
  %38 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %44 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -256
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %228

51:                                               ; preds = %42
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %57 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %60 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %63 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %64 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %65 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %55, i32 0, i32 %58, i32 %61, i32 0, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %225, label %68

68:                                               ; preds = %51
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %225

75:                                               ; preds = %68
  %76 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %77 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %87 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %95 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @QUERY_PORT_MAC_OFFSET, align 4
  %99 = call i32 @MLX4_PUT(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %102 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %105 = call i32 @MLX4_GET(i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %106, 224
  store i32 %107, i32* %16, align 4
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %109 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %113 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 3
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %16, align 4
  %121 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %122 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %132 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* @IFLA_VF_LINK_STATE_ENABLE, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %75
  %143 = load i32, i32* %16, align 4
  %144 = or i32 %143, 128
  store i32 %144, i32* %16, align 4
  br label %179

145:                                              ; preds = %75
  %146 = load i32, i32* @IFLA_VF_LINK_STATE_DISABLE, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %16, align 4
  %151 = and i32 %150, -129
  store i32 %151, i32* %16, align 4
  br label %178

152:                                              ; preds = %145
  %153 = load i32, i32* @IFLA_VF_LINK_STATE_AUTO, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %158 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load i32, i32* %20, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 2, i32 1
  store i32 %164, i32* %21, align 4
  %165 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @mlx4_QUERY_PORT(%struct.mlx4_dev* %165, i32 %166, %struct.mlx4_port_cap* %22)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %226

171:                                              ; preds = %160
  %172 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %22, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 7
  %175 = load i32, i32* %16, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %171, %156, %152
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %142
  %180 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %181 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %185 = call i32 @MLX4_PUT(i32 %182, i32 %183, i32 %184)
  %186 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %191 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MLX4_PORT_TYPE_ETH, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %179
  %199 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev* %199, i32 %200, i32 %201)
  store i32 %202, i32* %17, align 4
  br label %204

203:                                              ; preds = %179
  store i32 1, i32* %17, align 4
  br label %204

204:                                              ; preds = %203, %198
  %205 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %206 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @MLX4_PUT(i32 %207, i32 %208, i32 14)
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %211 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %215 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %17, align 4
  %220 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %221 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @MLX4_PUT(i32 %222, i32 %223, i32 12)
  br label %225

225:                                              ; preds = %204, %68, %51
  br label %226

226:                                              ; preds = %225, %170
  %227 = load i32, i32* %18, align 4
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %226, %48, %34
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_PORT(%struct.mlx4_dev*, i32, %struct.mlx4_port_cap*) #1

declare dso_local i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
