; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_load_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_load_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev, i32*, i64, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev = type { i32, %struct.mlx4_dev_cap*, %struct.TYPE_10__*, %struct.TYPE_7__, i64, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MLX4_PCI_DEV_IS_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Detected virtual function - running in slave mode\0A\00", align 1
@MLX4_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Multiple PFs not yet supported - Skipping PF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mlx4_opreq_action = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to reset HCA, aborting\0A\00", align 1
@MLX4_FLAG_MASTER = common dso_local global i32 0, align 4
@MLX4_FLAG_SRIOV = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to init command interface, aborting\0A\00", align 1
@MLX4_MAX_NUM_SLAVES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to init slave mfunc interface, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to init fw, aborting.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"QUERY_DEV_CAP command failed, aborting.\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Invalid SRIOV state\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to reset HCA, aborting.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@pf_loading = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_VHCR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Failed to init VHCR command interface, aborting\0A\00", align 1
@num_vfs_argc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [78 x i8] c"Error: Trying to configure VFs on port 2, but HCA has only %d physical ports\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Failed to init master mfunc interface, aborting.\0A\00", align 1
@MAX_MSIX = common dso_local global i32 0, align 4
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"INTx is not supported in multi-function mode, aborting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c" Failed to arm comm channel eq: %x\0A\00", align 1
@RES_TR_FREE_STRUCTS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, i32*, %struct.mlx4_priv*, i32)* @mlx4_load_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_load_one(%struct.pci_dev* %0, i32 %1, i32 %2, i32* %3, %struct.mlx4_priv* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx4_dev_cap*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.mlx4_priv* %4, %struct.mlx4_priv** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store %struct.mlx4_dev_cap* null, %struct.mlx4_dev_cap** %19, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 0
  store %struct.mlx4_dev* %25, %struct.mlx4_dev** %14, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 15
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 14
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 13
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %36 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %35, i32 0, i32 12
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 11
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 10
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %45 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %49 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %48, i32 0, i32 8
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %52 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %51, i32 0, i32 7
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_to_node(i32* %60)
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MLX4_PCI_DEV_IS_VF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %6
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %70 = call i32 @mlx4_warn(%struct.mlx4_dev* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %130

76:                                               ; preds = %6
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %78 = call i32 @mlx4_get_ownership(%struct.mlx4_dev* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %7, align 4
  br label %806

86:                                               ; preds = %81
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %88 = call i32 @mlx4_warn(%struct.mlx4_dev* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %806

91:                                               ; preds = %76
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 6
  %94 = call i32 @atomic_set(i32* %93, i32 0)
  %95 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %96 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %95, i32 0, i32 5
  %97 = load i32, i32* @mlx4_opreq_action, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %100 = call i32 @mlx4_reset(%struct.mlx4_dev* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %105 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %755

106:                                              ; preds = %91
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %112 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %114 = call i32 @pci_num_vf(%struct.pci_dev* %113)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %120 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %109
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %126 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  br label %129

129:                                              ; preds = %123, %106
  br label %130

130:                                              ; preds = %129, %68
  %131 = load i32, i32* @MLX4_DEVICE_STATE_UP, align 4
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %133 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %316, %245, %130
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %138 = call i32 @mlx4_cmd_init(%struct.mlx4_dev* %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %143 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %755

144:                                              ; preds = %136
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %146 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %150 = call i64 @mlx4_is_master(%struct.mlx4_dev* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, i64* @MLX4_MAX_NUM_SLAVES, align 8
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %155 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  br label %167

156:                                              ; preds = %148
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %160 = call i32 @mlx4_multi_func_init(%struct.mlx4_dev* %159)
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %165 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %751

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %144
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %170 = call i32 @mlx4_init_fw(%struct.mlx4_dev* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %175 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %743

176:                                              ; preds = %168
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %178 = call i64 @mlx4_is_master(%struct.mlx4_dev* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %267

180:                                              ; preds = %176
  %181 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %182 = icmp ne %struct.mlx4_dev_cap* %181, null
  br i1 %182, label %247, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call %struct.mlx4_dev_cap* @kzalloc(i32 12, i32 %184)
  store %struct.mlx4_dev_cap* %185, %struct.mlx4_dev_cap** %19, align 8
  %186 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %187 = icmp ne %struct.mlx4_dev_cap* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %16, align 4
  br label %740

191:                                              ; preds = %183
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %193 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %194 = call i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %192, %struct.mlx4_dev_cap* %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %199 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %740

200:                                              ; preds = %191
  %201 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %202 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i64 @mlx4_check_dev_cap(%struct.mlx4_dev* %201, %struct.mlx4_dev_cap* %202, i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %740

207:                                              ; preds = %200
  %208 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %209 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %246, label %214

214:                                              ; preds = %207
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %216 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @mlx4_enable_sriov(%struct.mlx4_dev* %215, %struct.pci_dev* %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %21, align 4
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %222 = call i32 @mlx4_close_fw(%struct.mlx4_dev* %221)
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %224 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %225 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %223, i32 %224)
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %228 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %230 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @SRIOV_VALID_STATE(i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %214
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %236 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %235, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %755

237:                                              ; preds = %214
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %239 = call i32 @mlx4_reset(%struct.mlx4_dev* %238)
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %244 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %755

245:                                              ; preds = %237
  br label %136

246:                                              ; preds = %207
  br label %266

247:                                              ; preds = %180
  %248 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %249 = call i32 @memset(%struct.mlx4_dev_cap* %248, i32 0, i32 12)
  %250 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %251 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %252 = call i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %250, %struct.mlx4_dev_cap* %251)
  store i32 %252, i32* %16, align 4
  %253 = load i32, i32* %16, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %257 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %740

258:                                              ; preds = %247
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %260 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = call i64 @mlx4_check_dev_cap(%struct.mlx4_dev* %259, %struct.mlx4_dev_cap* %260, i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %740

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %265, %246
  br label %267

267:                                              ; preds = %266, %176
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %269 = call i32 @mlx4_init_hca(%struct.mlx4_dev* %268)
  store i32 %269, i32* %16, align 4
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %329

272:                                              ; preds = %267
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* @EACCES, align 4
  %275 = sub nsw i32 0, %274
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %328

277:                                              ; preds = %272
  %278 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %279 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %280 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %278, i32 %279)
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %282 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %309

287:                                              ; preds = %277
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %292 = call i32 @pci_disable_sriov(%struct.pci_dev* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %295 = call i64 @mlx4_is_master(%struct.mlx4_dev* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = call i32 @atomic_dec(i32* @pf_loading)
  br label %302

302:                                              ; preds = %300, %297, %293
  %303 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %304 = xor i32 %303, -1
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %306 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = and i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %302, %277
  %310 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %311 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %309
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %315 = call i32 @mlx4_free_ownership(%struct.mlx4_dev* %314)
  br label %316

316:                                              ; preds = %313, %309
  %317 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %318 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %319 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  %322 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %323 = xor i32 %322, -1
  %324 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %325 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = and i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %136

328:                                              ; preds = %272
  br label %740

329:                                              ; preds = %267
  %330 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %331 = call i64 @mlx4_is_master(%struct.mlx4_dev* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %386

333:                                              ; preds = %329
  %334 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %386

340:                                              ; preds = %333
  %341 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %342 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %13, align 4
  %346 = call i32 @mlx4_enable_sriov(%struct.mlx4_dev* %341, %struct.pci_dev* %342, i32 %343, i32 %344, i32 %345)
  store i32 %346, i32* %22, align 4
  %347 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %348 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %22, align 4
  %351 = xor i32 %349, %350
  %352 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %353 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %354 = or i32 %352, %353
  %355 = and i32 %351, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %372

357:                                              ; preds = %340
  %358 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %359 = load i32, i32* @MLX4_CMD_CLEANUP_VHCR, align 4
  %360 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %358, i32 %359)
  %361 = load i32, i32* %22, align 4
  %362 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %363 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 8
  %364 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %365 = call i32 @mlx4_cmd_init(%struct.mlx4_dev* %364)
  store i32 %365, i32* %16, align 4
  %366 = load i32, i32* %16, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %357
  %369 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %370 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %369, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %737

371:                                              ; preds = %357
  br label %376

372:                                              ; preds = %340
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %375 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %372, %371
  %377 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %378 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @SRIOV_VALID_STATE(i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %376
  %383 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %384 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %737

385:                                              ; preds = %376
  br label %386

386:                                              ; preds = %385, %333, %329
  %387 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %388 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %386
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %392 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %391, i32 0, i32 2
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @pcie_print_link_status(i32 %395)
  br label %397

397:                                              ; preds = %390, %386
  %398 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %399 = call i64 @mlx4_is_master(%struct.mlx4_dev* %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %495

401:                                              ; preds = %397
  %402 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %403 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp slt i32 %405, 2
  br i1 %406, label %407, label %419

407:                                              ; preds = %401
  %408 = load i32, i32* @num_vfs_argc, align 4
  %409 = icmp sgt i32 %408, 1
  br i1 %409, label %410, label %419

410:                                              ; preds = %407
  %411 = load i32, i32* @EINVAL, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %16, align 4
  %413 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %414 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %415 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %413, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32 %417)
  br label %737

419:                                              ; preds = %407, %401
  %420 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %421 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %420, i32 0, i32 2
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = load i32*, i32** %11, align 8
  %426 = call i32 @memcpy(i32* %424, i32* %425, i32 8)
  store i32 0, i32* %18, align 4
  br label %427

427:                                              ; preds = %483, %419
  %428 = load i32, i32* %18, align 4
  %429 = sext i32 %428 to i64
  %430 = icmp ult i64 %429, 2
  br i1 %430, label %431, label %486

431:                                              ; preds = %427
  store i32 0, i32* %23, align 4
  br label %432

432:                                              ; preds = %477, %431
  %433 = load i32, i32* %23, align 4
  %434 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %435 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %434, i32 0, i32 2
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %18, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = icmp ult i32 %433, %442
  br i1 %443, label %444, label %482

444:                                              ; preds = %432
  %445 = load i32, i32* %18, align 4
  %446 = icmp slt i32 %445, 2
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = load i32, i32* %18, align 4
  %449 = add nsw i32 %448, 1
  br label %451

450:                                              ; preds = %444
  br label %451

451:                                              ; preds = %450, %447
  %452 = phi i32 [ %449, %447 ], [ 1, %450 ]
  %453 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %454 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %453, i32 0, i32 1
  %455 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %454, align 8
  %456 = load i32, i32* %15, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %455, i64 %457
  %459 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %458, i32 0, i32 1
  store i32 %452, i32* %459, align 4
  %460 = load i32, i32* %18, align 4
  %461 = icmp slt i32 %460, 2
  br i1 %461, label %462, label %463

462:                                              ; preds = %451
  br label %468

463:                                              ; preds = %451
  %464 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %465 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %464, i32 0, i32 3
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  br label %468

468:                                              ; preds = %463, %462
  %469 = phi i32 [ 1, %462 ], [ %467, %463 ]
  %470 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %471 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %470, i32 0, i32 1
  %472 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %472, i64 %474
  %476 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %475, i32 0, i32 2
  store i32 %469, i32* %476, align 4
  br label %477

477:                                              ; preds = %468
  %478 = load i32, i32* %15, align 4
  %479 = add i32 %478, 1
  store i32 %479, i32* %15, align 4
  %480 = load i32, i32* %23, align 4
  %481 = add i32 %480, 1
  store i32 %481, i32* %23, align 4
  br label %432

482:                                              ; preds = %432
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %18, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %18, align 4
  br label %427

486:                                              ; preds = %427
  %487 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %488 = call i32 @mlx4_multi_func_init(%struct.mlx4_dev* %487)
  store i32 %488, i32* %16, align 4
  %489 = load i32, i32* %16, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %486
  %492 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %493 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %492, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %737

494:                                              ; preds = %486
  br label %495

495:                                              ; preds = %494, %397
  %496 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %497 = call i32 @mlx4_alloc_eq_table(%struct.mlx4_dev* %496)
  store i32 %497, i32* %16, align 4
  %498 = load i32, i32* %16, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %495
  br label %719

501:                                              ; preds = %495
  %502 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %503 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %502, i32 0, i32 4
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @MAX_MSIX, align 4
  %507 = call i32 @bitmap_zero(i32 %505, i32 %506)
  %508 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %509 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %508, i32 0, i32 4
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 0
  %511 = call i32 @mutex_init(i32* %510)
  %512 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %513 = call i32 @mlx4_enable_msi_x(%struct.mlx4_dev* %512)
  %514 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %515 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %529

517:                                              ; preds = %501
  %518 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %519 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %529, label %524

524:                                              ; preds = %517
  %525 = load i32, i32* @EOPNOTSUPP, align 4
  %526 = sub nsw i32 0, %525
  store i32 %526, i32* %16, align 4
  %527 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %528 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %527, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  br label %716

529:                                              ; preds = %517, %501
  %530 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %531 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %540, label %533

533:                                              ; preds = %529
  %534 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %535 = call i32 @mlx4_init_steering(%struct.mlx4_dev* %534)
  store i32 %535, i32* %16, align 4
  %536 = load i32, i32* %16, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %533
  br label %705

539:                                              ; preds = %533
  br label %540

540:                                              ; preds = %539, %529
  %541 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %542 = call i32 @mlx4_init_quotas(%struct.mlx4_dev* %541)
  %543 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %544 = call i32 @mlx4_setup_hca(%struct.mlx4_dev* %543)
  store i32 %544, i32* %16, align 4
  %545 = load i32, i32* %16, align 4
  %546 = load i32, i32* @EBUSY, align 4
  %547 = sub nsw i32 0, %546
  %548 = icmp eq i32 %545, %547
  br i1 %548, label %549, label %574

549:                                              ; preds = %540
  %550 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %551 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %574

556:                                              ; preds = %549
  %557 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %558 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %574, label %560

560:                                              ; preds = %556
  %561 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %562 = xor i32 %561, -1
  %563 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %564 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = and i32 %565, %562
  store i32 %566, i32* %564, align 8
  %567 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %568 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %567, i32 0, i32 3
  %569 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %568, i32 0, i32 1
  store i32 1, i32* %569, align 4
  %570 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %571 = call i32 @pci_disable_msix(%struct.pci_dev* %570)
  %572 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %573 = call i32 @mlx4_setup_hca(%struct.mlx4_dev* %572)
  store i32 %573, i32* %16, align 4
  br label %574

574:                                              ; preds = %560, %556, %549, %540
  %575 = load i32, i32* %16, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %578

577:                                              ; preds = %574
  br label %697

578:                                              ; preds = %574
  %579 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %580 = call i64 @mlx4_is_master(%struct.mlx4_dev* %579)
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %592

582:                                              ; preds = %578
  %583 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %584 = call i32 @mlx4_ARM_COMM_CHANNEL(%struct.mlx4_dev* %583)
  store i32 %584, i32* %16, align 4
  %585 = load i32, i32* %16, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %582
  %588 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %589 = load i32, i32* %16, align 4
  %590 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %588, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %589)
  br label %697

591:                                              ; preds = %582
  br label %592

592:                                              ; preds = %591, %578
  store i32 1, i32* %17, align 4
  br label %593

593:                                              ; preds = %608, %592
  %594 = load i32, i32* %17, align 4
  %595 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %596 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %595, i32 0, i32 3
  %597 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = icmp sle i32 %594, %598
  br i1 %599, label %600, label %611

600:                                              ; preds = %593
  %601 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %602 = load i32, i32* %17, align 4
  %603 = call i32 @mlx4_init_port_info(%struct.mlx4_dev* %601, i32 %602)
  store i32 %603, i32* %16, align 4
  %604 = load i32, i32* %16, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %600
  br label %650

607:                                              ; preds = %600
  br label %608

608:                                              ; preds = %607
  %609 = load i32, i32* %17, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %17, align 4
  br label %593

611:                                              ; preds = %593
  %612 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %613 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %612, i32 0, i32 3
  %614 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %613, i32 0, i32 0
  store i32 1, i32* %614, align 8
  %615 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %616 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %615, i32 0, i32 3
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 1
  store i32 2, i32* %617, align 4
  %618 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %619 = call i32 @mlx4_register_device(%struct.mlx4_dev* %618)
  store i32 %619, i32* %16, align 4
  %620 = load i32, i32* %16, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %611
  br label %650

623:                                              ; preds = %611
  %624 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %625 = call i32 @mlx4_request_modules(%struct.mlx4_dev* %624)
  %626 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %627 = call i32 @mlx4_sense_init(%struct.mlx4_dev* %626)
  %628 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %629 = call i32 @mlx4_start_sense(%struct.mlx4_dev* %628)
  %630 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %631 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %630, i32 0, i32 2
  store i64 0, i64* %631, align 8
  %632 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %633 = call i64 @mlx4_is_master(%struct.mlx4_dev* %632)
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %647

635:                                              ; preds = %623
  %636 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %637 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %636, i32 0, i32 2
  %638 = load %struct.TYPE_10__*, %struct.TYPE_10__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 8
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %647

642:                                              ; preds = %635
  %643 = load i32, i32* %13, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %647, label %645

645:                                              ; preds = %642
  %646 = call i32 @atomic_dec(i32* @pf_loading)
  br label %647

647:                                              ; preds = %645, %642, %635, %623
  %648 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %649 = call i32 @kfree(%struct.mlx4_dev_cap* %648)
  store i32 0, i32* %7, align 4
  br label %806

650:                                              ; preds = %622, %606
  %651 = load i32, i32* %17, align 4
  %652 = add nsw i32 %651, -1
  store i32 %652, i32* %17, align 4
  br label %653

653:                                              ; preds = %664, %650
  %654 = load i32, i32* %17, align 4
  %655 = icmp sge i32 %654, 1
  br i1 %655, label %656, label %667

656:                                              ; preds = %653
  %657 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %658 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %657, i32 0, i32 1
  %659 = load i32*, i32** %658, align 8
  %660 = load i32, i32* %17, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i32, i32* %659, i64 %661
  %663 = call i32 @mlx4_cleanup_port_info(i32* %662)
  br label %664

664:                                              ; preds = %656
  %665 = load i32, i32* %17, align 4
  %666 = add nsw i32 %665, -1
  store i32 %666, i32* %17, align 4
  br label %653

667:                                              ; preds = %653
  %668 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %669 = call i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev* %668)
  %670 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %671 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %670)
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %667
  %674 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %675 = call i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev* %674)
  br label %676

676:                                              ; preds = %673, %667
  %677 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %678 = call i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev* %677)
  %679 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %680 = call i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev* %679)
  %681 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %682 = call i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev* %681)
  %683 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %684 = call i32 @mlx4_cmd_use_polling(%struct.mlx4_dev* %683)
  %685 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %686 = call i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev* %685)
  %687 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %688 = call i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev* %687)
  %689 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %690 = call i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev* %689)
  %691 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %692 = call i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev* %691)
  %693 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %694 = call i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev* %693)
  %695 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %696 = call i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev* %695)
  br label %697

697:                                              ; preds = %676, %587, %577
  %698 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %699 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %698)
  %700 = icmp ne i64 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %697
  %702 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %703 = call i32 @mlx4_clear_steering(%struct.mlx4_dev* %702)
  br label %704

704:                                              ; preds = %701, %697
  br label %705

705:                                              ; preds = %704, %538
  %706 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %707 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  %709 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %715

712:                                              ; preds = %705
  %713 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %714 = call i32 @pci_disable_msix(%struct.pci_dev* %713)
  br label %715

715:                                              ; preds = %712, %705
  br label %716

716:                                              ; preds = %715, %524
  %717 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %718 = call i32 @mlx4_free_eq_table(%struct.mlx4_dev* %717)
  br label %719

719:                                              ; preds = %716, %500
  %720 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %721 = call i64 @mlx4_is_master(%struct.mlx4_dev* %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %729

723:                                              ; preds = %719
  %724 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %725 = load i32, i32* @RES_TR_FREE_STRUCTS_ONLY, align 4
  %726 = call i32 @mlx4_free_resource_tracker(%struct.mlx4_dev* %724, i32 %725)
  %727 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %728 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %727)
  br label %729

729:                                              ; preds = %723, %719
  %730 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %731 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %730)
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %736

733:                                              ; preds = %729
  %734 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %735 = call i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev* %734)
  br label %736

736:                                              ; preds = %733, %729
  br label %737

737:                                              ; preds = %736, %491, %410, %382, %368
  %738 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %739 = call i32 @mlx4_close_hca(%struct.mlx4_dev* %738)
  br label %740

740:                                              ; preds = %737, %328, %264, %255, %206, %197, %188
  %741 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %742 = call i32 @mlx4_close_fw(%struct.mlx4_dev* %741)
  br label %743

743:                                              ; preds = %740, %173
  %744 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %745 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %744)
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %743
  %748 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %749 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %748)
  br label %750

750:                                              ; preds = %747, %743
  br label %751

751:                                              ; preds = %750, %163
  %752 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %753 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %754 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %752, i32 %753)
  br label %755

755:                                              ; preds = %751, %242, %234, %141, %103
  %756 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %757 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 8
  %759 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %760 = and i32 %758, %759
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %774

762:                                              ; preds = %755
  %763 = load i32, i32* %20, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %774, label %765

765:                                              ; preds = %762
  %766 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %767 = call i32 @pci_disable_sriov(%struct.pci_dev* %766)
  %768 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %769 = xor i32 %768, -1
  %770 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %771 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %770, i32 0, i32 0
  %772 = load i32, i32* %771, align 8
  %773 = and i32 %772, %769
  store i32 %773, i32* %771, align 8
  br label %774

774:                                              ; preds = %765, %762, %755
  %775 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %776 = call i64 @mlx4_is_master(%struct.mlx4_dev* %775)
  %777 = icmp ne i64 %776, 0
  br i1 %777, label %778, label %790

778:                                              ; preds = %774
  %779 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %780 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %779, i32 0, i32 2
  %781 = load %struct.TYPE_10__*, %struct.TYPE_10__** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %781, i32 0, i32 0
  %783 = load i32, i32* %782, align 8
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %778
  %786 = load i32, i32* %13, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %790, label %788

788:                                              ; preds = %785
  %789 = call i32 @atomic_dec(i32* @pf_loading)
  br label %790

790:                                              ; preds = %788, %785, %778, %774
  %791 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %792 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %791, i32 0, i32 0
  %793 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %792, i32 0, i32 1
  %794 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %793, align 8
  %795 = call i32 @kfree(%struct.mlx4_dev_cap* %794)
  %796 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %797 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %796)
  %798 = icmp ne i64 %797, 0
  br i1 %798, label %802, label %799

799:                                              ; preds = %790
  %800 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %801 = call i32 @mlx4_free_ownership(%struct.mlx4_dev* %800)
  br label %802

802:                                              ; preds = %799, %790
  %803 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %804 = call i32 @kfree(%struct.mlx4_dev_cap* %803)
  %805 = load i32, i32* %16, align 4
  store i32 %805, i32* %7, align 4
  br label %806

806:                                              ; preds = %802, %647, %86, %84
  %807 = load i32, i32* %7, align 4
  ret i32 %807
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_get_ownership(%struct.mlx4_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlx4_reset(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_cmd_init(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_multi_func_init(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_fw(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_dev_cap* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i64 @mlx4_check_dev_cap(%struct.mlx4_dev*, %struct.mlx4_dev_cap*, i32*) #1

declare dso_local i32 @mlx4_enable_sriov(%struct.mlx4_dev*, %struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_close_fw(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_cleanup(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @SRIOV_VALID_STATE(i32) #1

declare dso_local i32 @memset(%struct.mlx4_dev_cap*, i32, i32) #1

declare dso_local i32 @mlx4_init_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_ownership(%struct.mlx4_dev*) #1

declare dso_local i32 @pcie_print_link_status(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlx4_alloc_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mlx4_enable_msi_x(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_quotas(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_setup_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_ARM_COMM_CHANNEL(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_port_info(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_register_device(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_request_modules(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_sense_init(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_start_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_dev_cap*) #1

declare dso_local i32 @mlx4_cleanup_port_info(i32*) #1

declare dso_local i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_polling(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_clear_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_resource_tracker(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_close_hca(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
