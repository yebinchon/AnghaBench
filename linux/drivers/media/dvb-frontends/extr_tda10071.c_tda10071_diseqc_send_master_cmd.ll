; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"msg_len=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"loop=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_LNB_SEND_DISEQC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @tda10071_diseqc_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_diseqc_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tda10071_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tda10071_dev*, %struct.tda10071_dev** %13, align 8
  store %struct.tda10071_dev* %14, %struct.tda10071_dev** %6, align 8
  %15 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %16 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %19 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %136

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %136

44:                                               ; preds = %36
  store i32 500, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %70

54:                                               ; preds = %52
  %55 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %56 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_read(i32 %57, i32 71, i32* %11)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %136

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = lshr i32 %63, 0
  %65 = and i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %45

70:                                               ; preds = %52
  %71 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %136

80:                                               ; preds = %70
  %81 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %82 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @regmap_update_bits(i32 %83, i32 71, i32 1, i32 0)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %136

88:                                               ; preds = %80
  %89 = load i32, i32* @CMD_LNB_SEND_DISEQC, align 4
  %90 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 0, i32* %101, align 4
  %102 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 2, i32* %104, align 4
  %105 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  store i32 0, i32* %107, align 4
  %108 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 %110, i32* %113, align 4
  %114 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memcpy(i32* %116, i32 %119, i32 %122)
  %124 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 7, %126
  %128 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %130 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %129, %struct.tda10071_cmd* %8)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %88
  br label %136

134:                                              ; preds = %88
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %142

136:                                              ; preds = %133, %87, %77, %61, %41, %22
  %137 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 0
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @dev_dbg(i32* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %136, %134
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
