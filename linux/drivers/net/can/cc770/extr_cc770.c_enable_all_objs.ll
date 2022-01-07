; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_enable_all_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_enable_all_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { i8*, i32 }

@CC770_OBJ_FLAG_RX = common dso_local global i8 0, align 1
@CTRL_EAF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Message object %d for RX data, RTR, SFF and EFF\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Message object %d for RX %s %s\0A\00", align 1
@CC770_OBJ_FLAG_RTR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RTR\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@CC770_OBJ_FLAG_EFF = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EFF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SFF\00", align 1
@MSGCFG_XTD = common dso_local global i32 0, align 4
@MSGCFG_DIR = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@MSGVAL_SET = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_SET = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@CPUUPD_SET = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@MSGLST_RES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Message object %d for TX data, RTR, SFF and EFF\0A\00", align 1
@CPUUPD_RES = common dso_local global i32 0, align 4
@MSGVAL_RES = common dso_local global i32 0, align 4
@RXIE_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @enable_all_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_all_objs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cc770_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.cc770_priv* %9, %struct.cc770_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %188, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %13 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i8* %14)
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %191

17:                                               ; preds = %10
  %18 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %19 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %5, align 1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @obj2msgobj(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @CC770_OBJ_FLAG_RX, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %153

33:                                               ; preds = %17
  %34 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %35 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CTRL_EAF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %188

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %68

48:                                               ; preds = %33
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @CC770_OBJ_FLAG_RTR, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @CC770_OBJ_FLAG_EFF, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %67 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %58, i8* %66)
  br label %68

68:                                               ; preds = %48, %44
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @CC770_OBJ_FLAG_EFF, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @MSGCFG_XTD, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %75
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @CC770_OBJ_FLAG_RTR, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @MSGCFG_DIR, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @cc770_write_reg(%struct.cc770_priv* %90, i32 %96, i32 %97)
  %99 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MSGVAL_SET, align 4
  %107 = load i32, i32* @TXIE_RES, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @RXIE_SET, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @INTPND_RES, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @cc770_write_reg(%struct.cc770_priv* %99, i32 %105, i32 %112)
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @CC770_OBJ_FLAG_RTR, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %89
  %121 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NEWDAT_RES, align 4
  %129 = load i32, i32* @CPUUPD_SET, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @TXRQST_RES, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @RMTPND_RES, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @cc770_write_reg(%struct.cc770_priv* %121, i32 %127, i32 %134)
  br label %152

136:                                              ; preds = %89
  %137 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NEWDAT_RES, align 4
  %145 = load i32, i32* @MSGLST_RES, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @TXRQST_RES, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RMTPND_RES, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @cc770_write_reg(%struct.cc770_priv* %137, i32 %143, i32 %150)
  br label %152

152:                                              ; preds = %136, %120
  br label %187

153:                                              ; preds = %17
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  %157 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %159 = load i32, i32* %7, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RMTPND_RES, align 4
  %165 = load i32, i32* @TXRQST_RES, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CPUUPD_RES, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @NEWDAT_RES, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @cc770_write_reg(%struct.cc770_priv* %157, i32 %163, i32 %170)
  %172 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MSGVAL_RES, align 4
  %180 = load i32, i32* @TXIE_RES, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @RXIE_RES, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @INTPND_RES, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @cc770_write_reg(%struct.cc770_priv* %172, i32 %178, i32 %185)
  br label %187

187:                                              ; preds = %153, %152
  br label %188

188:                                              ; preds = %187, %43
  %189 = load i32, i32* %6, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %10

191:                                              ; preds = %10
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
