; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_master_activate_admin_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_master_activate_admin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.mlx4_slave_state* }
%struct.TYPE_14__ = type { %struct.mlx4_vport_state*, i32* }
%struct.mlx4_vport_state = type { i64, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.mlx4_vport_oper_state*, i32* }
%struct.mlx4_vport_oper_state = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.mlx4_slave_state = type { i64 }
%struct.mlx4_active_ports = type { i32 }

@ETH_P_8021AD = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@NO_INDX = common dso_local global i8* null, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"No mac resources slave %d, port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"alloc mac %llx idx  %d slave %d port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32)* @mlx4_master_activate_admin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_master_activate_admin_state(%struct.mlx4_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_state*, align 8
  %9 = alloca %struct.mlx4_vport_oper_state*, align 8
  %10 = alloca %struct.mlx4_slave_state*, align 8
  %11 = alloca %struct.mlx4_active_ports, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %18, i64 %20
  store %struct.mlx4_slave_state* %21, %struct.mlx4_slave_state** %10, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlx4_get_active_ports(%struct.TYPE_18__* %23, i32 %24)
  %26 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @find_first_bit(i32 %28, i32 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bitmap_weight(i32 %39, i32 %44)
  %46 = add nsw i32 %37, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %279, %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %282

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @test_bit(i32 %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %279

60:                                               ; preds = %52
  %61 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %74, i32* %87, align 4
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %97, i64 %99
  store %struct.mlx4_vport_oper_state* %100, %struct.mlx4_vport_oper_state** %9, align 8
  %101 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %110, i64 %112
  store %struct.mlx4_vport_state* %113, %struct.mlx4_vport_state** %8, align 8
  %114 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %115 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @ETH_P_8021AD, align 4
  %118 = call i64 @htons(i32 %117)
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %60
  %121 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %10, align 8
  %122 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120, %60
  %126 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %133 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  %138 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %139 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %142 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 8
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %125, %120
  %145 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %146 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %149 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 7
  store i32 %147, i32* %150, align 8
  %151 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %155 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 8
  %157 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %158 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %161 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 6
  store i64 %159, i64* %162, align 8
  %163 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %164 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %167 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 5
  store i32 %165, i32* %168, align 4
  %169 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %170 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %173 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 4
  store i32 %171, i32* %174, align 8
  %175 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %176 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %179 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 4
  %181 = load i64, i64* @MLX4_VGT, align 8
  %182 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %183 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %144
  %187 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %188 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %191 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %194 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %193, i32 0, i32 0
  %195 = call i32 @__mlx4_register_vlan(%struct.TYPE_18__* %188, i32 %189, i64 %192, i32* %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %186
  %199 = load i8*, i8** @NO_INDX, align 8
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %202 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i64, i64* @MLX4_VGT, align 8
  %204 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %205 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  store i64 %203, i64* %206, align 8
  %207 = load i32, i32* @ETH_P_8021Q, align 4
  %208 = call i64 @htons(i32 %207)
  %209 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %210 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  store i64 %208, i64* %211, align 8
  %212 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %213 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %212, i32 0, i32 0
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @mlx4_warn(%struct.TYPE_18__* %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %214, i32 %215)
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %3, align 4
  br label %283

218:                                              ; preds = %186
  %219 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %220 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %219, i32 0, i32 0
  %221 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %222 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %227 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @mlx4_dbg(%struct.TYPE_18__* %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %225, i32 %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %218, %144
  %233 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %234 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %278

237:                                              ; preds = %232
  %238 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %239 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %238, i32 0, i32 0
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %8, align 8
  %242 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @__mlx4_register_mac(%struct.TYPE_18__* %239, i32 %240, i32 %243)
  %245 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %248 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 0, %249
  br i1 %250, label %251, label %265

251:                                              ; preds = %237
  %252 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %253 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %7, align 4
  %255 = load i8*, i8** @NO_INDX, align 8
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %258 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %260 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %259, i32 0, i32 0
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @mlx4_warn(%struct.TYPE_18__* %260, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %3, align 4
  br label %283

265:                                              ; preds = %237
  %266 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %267 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %266, i32 0, i32 0
  %268 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %269 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %9, align 8
  %273 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @mlx4_dbg(%struct.TYPE_18__* %267, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %271, i32 %274, i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %265, %232
  br label %279

279:                                              ; preds = %278, %59
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %48

282:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %251, %198
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @mlx4_get_active_ports(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.TYPE_18__*, i32, i64, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.TYPE_18__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_register_mac(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
