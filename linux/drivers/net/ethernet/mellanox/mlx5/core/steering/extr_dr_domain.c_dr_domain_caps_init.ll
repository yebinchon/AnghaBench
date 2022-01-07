; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_caps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_caps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5dr_domain = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.mlx5dr_cmd_vport_cap = type { i32, i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate domain, bad link type\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MLX5DR_STE_TYPE_RX = common dso_local global i8* null, align 8
@MLX5DR_STE_TYPE_TX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get esw manager vport\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5dr_domain*)* @dr_domain_caps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_domain_caps_init(%struct.mlx5_core_dev* %0, %struct.mlx5dr_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %5, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = load i32, i32* @port_type, align 4
  %10 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %8, i32 %9)
  %11 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %15 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %205

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = call i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev* %19)
  %21 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 9
  store i32 %20, i32* %24, align 4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = call i32 @mlx5dr_cmd_query_device(%struct.mlx5_core_dev* %25, %struct.TYPE_9__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %205

34:                                               ; preds = %18
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %37 = call i32 @dr_domain_query_fdb_caps(%struct.mlx5_core_dev* %35, %struct.mlx5dr_domain* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %205

42:                                               ; preds = %34
  %43 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %198 [
    i32 129, label %46
    i32 128, label %83
    i32 130, label %120
  ]

46:                                               ; preds = %42
  %47 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %205

56:                                               ; preds = %46
  %57 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i8*, i8** @MLX5DR_STE_TYPE_RX, align 8
  %61 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i8* %60, i8** %64, align 8
  %65 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  br label %203

83:                                               ; preds = %42
  %84 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @ENOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %205

93:                                               ; preds = %83
  %94 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i8*, i8** @MLX5DR_STE_TYPE_TX, align 8
  %98 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i8* %97, i8** %101, align 8
  %102 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %112 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %117 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  br label %203

120:                                              ; preds = %42
  %121 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %122 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @ENOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %205

130:                                              ; preds = %120
  %131 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %132 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %205

140:                                              ; preds = %130
  %141 = load i8*, i8** @MLX5DR_STE_TYPE_RX, align 8
  %142 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %143 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i8* %141, i8** %145, align 8
  %146 = load i8*, i8** @MLX5DR_STE_TYPE_TX, align 8
  %147 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %148 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i8* %146, i8** %150, align 8
  %151 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %152 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = call %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.TYPE_9__* %153, i32 0)
  store %struct.mlx5dr_cmd_vport_cap* %154, %struct.mlx5dr_cmd_vport_cap** %6, align 8
  %155 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %6, align 8
  %156 = icmp ne %struct.mlx5dr_cmd_vport_cap* %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %140
  %158 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %159 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %205

162:                                              ; preds = %140
  %163 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %164 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %6, align 8
  %167 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 4
  %173 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %6, align 8
  %174 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %177 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  %180 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %181 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %186 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 8
  %189 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %190 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %195 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  store i32 %193, i32* %197, align 8
  br label %203

198:                                              ; preds = %42
  %199 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %200 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %198, %162, %93, %56
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %157, %137, %127, %90, %53, %40, %32, %13
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5dr_cmd_query_device(%struct.mlx5_core_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @dr_domain_query_fdb_caps(%struct.mlx5_core_dev*, %struct.mlx5dr_domain*) #1

declare dso_local %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
