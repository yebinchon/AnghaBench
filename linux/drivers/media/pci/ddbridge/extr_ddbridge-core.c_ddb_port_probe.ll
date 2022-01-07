; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i64, i8*, i8*, i64, i8*, %struct.TYPE_5__*, i64, %struct.ddb* }
%struct.TYPE_5__ = type { i64 }
%struct.ddb = type { i32, %struct.ddb_link* }
%struct.ddb_link = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NO MODULE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@DDB_PORT_NONE = common dso_local global i8* null, align 8
@dummy_tuner = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@DDB_PORT_TUNER = common dso_local global i8* null, align 8
@DDB_TUNER_DUMMY = common dso_local global i64 0, align 8
@ts_loop = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"TS LOOP\00", align 1
@DDB_PORT_LOOP = common dso_local global i8* null, align 8
@DDB_OCTOPUS_CI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"NO TAB\00", align 1
@DDB_OCTOPUS_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"DUAL DVB-S2 MAX\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"MXL5XX\00", align 1
@DDB_TUNER_MXL5XX = common dso_local global i64 0, align 8
@I2C_SPEED_400 = common dso_local global i32 0, align 4
@I2C_TIMING = common dso_local global i64 0, align 8
@DDB_OCTOPUS_MCI = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"DUAL MCI\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MCI\00", align 1
@DDB_TUNER_MCI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"CI internal\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"INTERNAL\00", align 1
@DDB_PORT_CI = common dso_local global i8* null, align 8
@DDB_CI_INTERNAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CXD2099\00", align 1
@DDB_CI_EXTERNAL_SONY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"Port %d: Uninitialized DuoFlex\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DuoFlex CI\00", align 1
@DDB_CI_EXTERNAL_XO2 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"CI_XO2\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"unknown XO2 DuoFlex\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@xo2names = common dso_local global i8** null, align 8
@DDB_TUNER_XO2 = common dso_local global i64 0, align 8
@xo2types = common dso_local global i8** null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"DUAL DVB-C2T2 CXD2843\00", align 1
@DDB_TUNER_DVBC2T2_SONY_P = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"DVBC2T2_SONY\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"DUAL DVB-CT2 CXD2837\00", align 1
@DDB_TUNER_DVBCT2_SONY_P = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"DVBCT2_SONY\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"DUAL ISDB-T CXD2838\00", align 1
@DDB_TUNER_ISDBT_SONY_P = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"ISDBT_SONY\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"DUAL DVB-C2T2 ISDB-T CXD2854\00", align 1
@DDB_TUNER_DVBC2T2I_SONY_P = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"DVBC2T2I_ISDBT_SONY\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"DUAL DVB-S2\00", align 1
@DDB_TUNER_DVBS_ST = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"DVBS_ST\00", align 1
@I2C_SPEED_100 = common dso_local global i32 0, align 4
@TS_QUIRK_REVERSED = common dso_local global i32 0, align 4
@DDB_TUNER_DVBS_STV0910_PR = common dso_local global i64 0, align 8
@DDB_TUNER_DVBS_STV0910_P = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"DVBS_ST_0910\00", align 1
@DDB_TUNER_DVBS_ST_AA = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"DVBS_ST_AA\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"DUAL DVB-C/T\00", align 1
@DDB_TUNER_DVBCT_TR = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"DVBCT_TR\00", align 1
@DDB_TUNER_DVBCT_ST = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [9 x i8] c"DVBCT_ST\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"ENCTI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_port*)* @ddb_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_port_probe(%struct.ddb_port* %0) #0 {
  %2 = alloca %struct.ddb_port*, align 8
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ddb_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ddb_port* %0, %struct.ddb_port** %2, align 8
  %8 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %9 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %8, i32 0, i32 7
  %10 = load %struct.ddb*, %struct.ddb** %9, align 8
  store %struct.ddb* %10, %struct.ddb** %3, align 8
  %11 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %12 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ddb*, %struct.ddb** %3, align 8
  %15 = getelementptr inbounds %struct.ddb, %struct.ddb* %14, i32 0, i32 1
  %16 = load %struct.ddb_link*, %struct.ddb_link** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %16, i64 %17
  store %struct.ddb_link* %18, %struct.ddb_link** %5, align 8
  %19 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %22 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load i8*, i8** @DDB_PORT_NONE, align 8
  %24 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %25 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* @dummy_tuner, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %1
  %29 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %30 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %35 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %41 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  %42 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %43 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %44 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* @DDB_TUNER_DUMMY, align 8
  %46 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %47 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %49 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %48, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  br label %493

50:                                               ; preds = %33, %28, %1
  %51 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %52 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ts_loop, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %58 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = load i8*, i8** @DDB_PORT_LOOP, align 8
  %60 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %61 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  br label %493

62:                                               ; preds = %50
  %63 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %64 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 1
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %69 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DDB_OCTOPUS_CI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %77 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %84 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %83, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %84, align 8
  %85 = load i8*, i8** @DDB_PORT_NONE, align 8
  %86 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %87 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %493

88:                                               ; preds = %75, %67, %62
  %89 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %90 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DDB_OCTOPUS_MAX, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %88
  %97 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %98 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %97, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %100 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %99, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %100, align 8
  %101 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %102 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %103 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* @DDB_TUNER_MXL5XX, align 8
  %105 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %106 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %105, i32 0, i32 6
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %108 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %107, i32 0, i32 5
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = icmp ne %struct.TYPE_5__* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %96
  %112 = load %struct.ddb*, %struct.ddb** %3, align 8
  %113 = load i32, i32* @I2C_SPEED_400, align 4
  %114 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %115 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %114, i32 0, i32 5
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @I2C_TIMING, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @ddbwritel(%struct.ddb* %112, i32 %113, i64 %120)
  br label %122

122:                                              ; preds = %111, %96
  br label %493

123:                                              ; preds = %88
  %124 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %125 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DDB_OCTOPUS_MCI, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %159

131:                                              ; preds = %123
  %132 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %133 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %136 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %493

142:                                              ; preds = %131
  %143 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %144 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %143, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %146 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %145, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %146, align 8
  %147 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %148 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %149 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* @DDB_TUNER_MCI, align 8
  %151 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %152 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %150, %155
  %157 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %158 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %157, i32 0, i32 6
  store i64 %156, i64* %158, align 8
  br label %493

159:                                              ; preds = %123
  %160 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %161 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %162, 1
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %166 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DDB_OCTOPUS_CI, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %174 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %173, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %174, align 8
  %175 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %176 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %175, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %176, align 8
  %177 = load i8*, i8** @DDB_PORT_CI, align 8
  %178 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %179 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = load i64, i64* @DDB_CI_INTERNAL, align 8
  %181 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %182 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %181, i32 0, i32 6
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %172, %164, %159
  %184 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %185 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %184, i32 0, i32 5
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = icmp ne %struct.TYPE_5__* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  br label %493

189:                                              ; preds = %183
  %190 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %191 = call i64 @port_has_cxd(%struct.ddb_port* %190, i32* %6)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %198 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %197, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %198, align 8
  %199 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %200 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %199, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %200, align 8
  %201 = load i8*, i8** @DDB_PORT_CI, align 8
  %202 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %203 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load i64, i64* @DDB_CI_EXTERNAL_SONY, align 8
  %205 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %206 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %205, i32 0, i32 6
  store i64 %204, i64* %206, align 8
  %207 = load %struct.ddb*, %struct.ddb** %3, align 8
  %208 = load i32, i32* @I2C_SPEED_400, align 4
  %209 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %210 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %209, i32 0, i32 5
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @I2C_TIMING, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @ddbwritel(%struct.ddb* %207, i32 %208, i64 %215)
  br label %226

217:                                              ; preds = %193
  %218 = load %struct.ddb*, %struct.ddb** %3, align 8
  %219 = getelementptr inbounds %struct.ddb, %struct.ddb* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %222 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @dev_info(i32 %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %224)
  br label %493

226:                                              ; preds = %196
  br label %493

227:                                              ; preds = %189
  %228 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %229 = call i64 @port_has_xo2(%struct.ddb_port* %228, i32* %7, i32* %6)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %294

231:                                              ; preds = %227
  %232 = load %struct.ddb*, %struct.ddb** %3, align 8
  %233 = load i32, i32* @I2C_SPEED_400, align 4
  %234 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %235 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %234, i32 0, i32 5
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @I2C_TIMING, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @ddbwritel(%struct.ddb* %232, i32 %233, i64 %240)
  %242 = load i32, i32* %7, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %257

244:                                              ; preds = %231
  %245 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %246 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %245, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %246, align 8
  %247 = load i8*, i8** @DDB_PORT_CI, align 8
  %248 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %249 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  %250 = load i64, i64* @DDB_CI_EXTERNAL_XO2, align 8
  %251 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %252 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %251, i32 0, i32 6
  store i64 %250, i64* %252, align 8
  %253 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %254 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %253, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %254, align 8
  %255 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %256 = call i32 @init_xo2_ci(%struct.ddb_port* %255)
  br label %493

257:                                              ; preds = %231
  %258 = load i32, i32* %6, align 4
  %259 = ashr i32 %258, 2
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp sgt i32 %260, 5
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %264 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %263, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8** %264, align 8
  %265 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %266 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %265, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %266, align 8
  br label %293

267:                                              ; preds = %257
  %268 = load i8**, i8*** @xo2names, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %274 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %273, i32 0, i32 1
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %276 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %277 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %276, i32 0, i32 4
  store i8* %275, i8** %277, align 8
  %278 = load i64, i64* @DDB_TUNER_XO2, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %278, %280
  %282 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %283 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %282, i32 0, i32 6
  store i64 %281, i64* %283, align 8
  %284 = load i8**, i8*** @xo2types, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %290 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %289, i32 0, i32 2
  store i8* %288, i8** %290, align 8
  %291 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %292 = call i32 @init_xo2(%struct.ddb_port* %291)
  br label %293

293:                                              ; preds = %267, %262
  br label %492

294:                                              ; preds = %227
  %295 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %296 = call i64 @port_has_cxd28xx(%struct.ddb_port* %295, i32* %6)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %347

298:                                              ; preds = %294
  %299 = load i32, i32* %6, align 4
  switch i32 %299, label %332 [
    i32 164, label %300
    i32 177, label %308
    i32 176, label %316
    i32 193, label %324
  ]

300:                                              ; preds = %298
  %301 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %302 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %301, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8** %302, align 8
  %303 = load i64, i64* @DDB_TUNER_DVBC2T2_SONY_P, align 8
  %304 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %305 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %304, i32 0, i32 6
  store i64 %303, i64* %305, align 8
  %306 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %307 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %306, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %307, align 8
  br label %333

308:                                              ; preds = %298
  %309 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %310 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %309, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8** %310, align 8
  %311 = load i64, i64* @DDB_TUNER_DVBCT2_SONY_P, align 8
  %312 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %313 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %312, i32 0, i32 6
  store i64 %311, i64* %313, align 8
  %314 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %315 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %314, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8** %315, align 8
  br label %333

316:                                              ; preds = %298
  %317 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %318 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %317, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8** %318, align 8
  %319 = load i64, i64* @DDB_TUNER_ISDBT_SONY_P, align 8
  %320 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %321 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %320, i32 0, i32 6
  store i64 %319, i64* %321, align 8
  %322 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %323 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %322, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8** %323, align 8
  br label %333

324:                                              ; preds = %298
  %325 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %326 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %325, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i8** %326, align 8
  %327 = load i64, i64* @DDB_TUNER_DVBC2T2I_SONY_P, align 8
  %328 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %329 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %328, i32 0, i32 6
  store i64 %327, i64* %329, align 8
  %330 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %331 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %330, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8** %331, align 8
  br label %333

332:                                              ; preds = %298
  br label %493

333:                                              ; preds = %324, %316, %308, %300
  %334 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %335 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %336 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %335, i32 0, i32 4
  store i8* %334, i8** %336, align 8
  %337 = load %struct.ddb*, %struct.ddb** %3, align 8
  %338 = load i32, i32* @I2C_SPEED_400, align 4
  %339 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %340 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %339, i32 0, i32 5
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @I2C_TIMING, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i32 @ddbwritel(%struct.ddb* %337, i32 %338, i64 %345)
  br label %491

347:                                              ; preds = %294
  %348 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %349 = call i64 @port_has_stv0900(%struct.ddb_port* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %372

351:                                              ; preds = %347
  %352 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %353 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %352, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %353, align 8
  %354 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %355 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %356 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %355, i32 0, i32 4
  store i8* %354, i8** %356, align 8
  %357 = load i64, i64* @DDB_TUNER_DVBS_ST, align 8
  %358 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %359 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %358, i32 0, i32 6
  store i64 %357, i64* %359, align 8
  %360 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %361 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %360, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %361, align 8
  %362 = load %struct.ddb*, %struct.ddb** %3, align 8
  %363 = load i32, i32* @I2C_SPEED_100, align 4
  %364 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %365 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %364, i32 0, i32 5
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @I2C_TIMING, align 8
  %370 = add nsw i64 %368, %369
  %371 = call i32 @ddbwritel(%struct.ddb* %362, i32 %363, i64 %370)
  br label %490

372:                                              ; preds = %347
  %373 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %374 = call i64 @port_has_stv0900_aa(%struct.ddb_port* %373, i32* %6)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %426

376:                                              ; preds = %372
  %377 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %378 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %377, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %378, align 8
  %379 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %380 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %381 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %380, i32 0, i32 4
  store i8* %379, i8** %381, align 8
  %382 = load i32, i32* %6, align 4
  %383 = icmp eq i32 %382, 81
  br i1 %383, label %384, label %409

384:                                              ; preds = %376
  %385 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %386 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %384
  %390 = load %struct.ddb_link*, %struct.ddb_link** %5, align 8
  %391 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %390, i32 0, i32 0
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @TS_QUIRK_REVERSED, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %389
  %399 = load i64, i64* @DDB_TUNER_DVBS_STV0910_PR, align 8
  %400 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %401 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %400, i32 0, i32 6
  store i64 %399, i64* %401, align 8
  br label %406

402:                                              ; preds = %389, %384
  %403 = load i64, i64* @DDB_TUNER_DVBS_STV0910_P, align 8
  %404 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %405 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %404, i32 0, i32 6
  store i64 %403, i64* %405, align 8
  br label %406

406:                                              ; preds = %402, %398
  %407 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %408 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %407, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8** %408, align 8
  br label %415

409:                                              ; preds = %376
  %410 = load i64, i64* @DDB_TUNER_DVBS_ST_AA, align 8
  %411 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %412 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %411, i32 0, i32 6
  store i64 %410, i64* %412, align 8
  %413 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %414 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %413, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8** %414, align 8
  br label %415

415:                                              ; preds = %409, %406
  %416 = load %struct.ddb*, %struct.ddb** %3, align 8
  %417 = load i32, i32* @I2C_SPEED_100, align 4
  %418 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %419 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %418, i32 0, i32 5
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @I2C_TIMING, align 8
  %424 = add nsw i64 %422, %423
  %425 = call i32 @ddbwritel(%struct.ddb* %416, i32 %417, i64 %424)
  br label %489

426:                                              ; preds = %372
  %427 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %428 = call i64 @port_has_drxks(%struct.ddb_port* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %451

430:                                              ; preds = %426
  %431 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %432 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %431, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %432, align 8
  %433 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %434 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %435 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %434, i32 0, i32 4
  store i8* %433, i8** %435, align 8
  %436 = load i64, i64* @DDB_TUNER_DVBCT_TR, align 8
  %437 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %438 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %437, i32 0, i32 6
  store i64 %436, i64* %438, align 8
  %439 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %440 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %439, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %440, align 8
  %441 = load %struct.ddb*, %struct.ddb** %3, align 8
  %442 = load i32, i32* @I2C_SPEED_400, align 4
  %443 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %444 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %443, i32 0, i32 5
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @I2C_TIMING, align 8
  %449 = add nsw i64 %447, %448
  %450 = call i32 @ddbwritel(%struct.ddb* %441, i32 %442, i64 %449)
  br label %488

451:                                              ; preds = %426
  %452 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %453 = call i64 @port_has_stv0367(%struct.ddb_port* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %476

455:                                              ; preds = %451
  %456 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %457 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %456, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %457, align 8
  %458 = load i8*, i8** @DDB_PORT_TUNER, align 8
  %459 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %460 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %459, i32 0, i32 4
  store i8* %458, i8** %460, align 8
  %461 = load i64, i64* @DDB_TUNER_DVBCT_ST, align 8
  %462 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %463 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %462, i32 0, i32 6
  store i64 %461, i64* %463, align 8
  %464 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %465 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %464, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8** %465, align 8
  %466 = load %struct.ddb*, %struct.ddb** %3, align 8
  %467 = load i32, i32* @I2C_SPEED_100, align 4
  %468 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %469 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %468, i32 0, i32 5
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @I2C_TIMING, align 8
  %474 = add nsw i64 %472, %473
  %475 = call i32 @ddbwritel(%struct.ddb* %466, i32 %467, i64 %474)
  br label %487

476:                                              ; preds = %451
  %477 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %478 = call i64 @port_has_encti(%struct.ddb_port* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %476
  %481 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %482 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %481, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8** %482, align 8
  %483 = load i8*, i8** @DDB_PORT_LOOP, align 8
  %484 = load %struct.ddb_port*, %struct.ddb_port** %2, align 8
  %485 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %484, i32 0, i32 4
  store i8* %483, i8** %485, align 8
  br label %486

486:                                              ; preds = %480, %476
  br label %487

487:                                              ; preds = %486, %455
  br label %488

488:                                              ; preds = %487, %430
  br label %489

489:                                              ; preds = %488, %415
  br label %490

490:                                              ; preds = %489, %351
  br label %491

491:                                              ; preds = %490, %333
  br label %492

492:                                              ; preds = %491, %293
  br label %493

493:                                              ; preds = %39, %56, %82, %122, %141, %142, %188, %217, %244, %332, %492, %226
  ret void
}

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i64) #1

declare dso_local i64 @port_has_cxd(%struct.ddb_port*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i64 @port_has_xo2(%struct.ddb_port*, i32*, i32*) #1

declare dso_local i32 @init_xo2_ci(%struct.ddb_port*) #1

declare dso_local i32 @init_xo2(%struct.ddb_port*) #1

declare dso_local i64 @port_has_cxd28xx(%struct.ddb_port*, i32*) #1

declare dso_local i64 @port_has_stv0900(%struct.ddb_port*) #1

declare dso_local i64 @port_has_stv0900_aa(%struct.ddb_port*, i32*) #1

declare dso_local i64 @port_has_drxks(%struct.ddb_port*) #1

declare dso_local i64 @port_has_stv0367(%struct.ddb_port*) #1

declare dso_local i64 @port_has_encti(%struct.ddb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
