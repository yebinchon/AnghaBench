; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_recv_slave_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_diseqc_recv_slave_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dvb_diseqc_slave_reply = type { i32, i32 }
%struct.tda10071_cmd = type { i32, i64* }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"loop=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_LNB_UPDATE_REPLY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @tda10071_diseqc_recv_slave_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_diseqc_recv_slave_reply(%struct.dvb_frontend* %0, %struct.dvb_diseqc_slave_reply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tda10071_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_slave_reply* %1, %struct.dvb_diseqc_slave_reply** %5, align 8
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
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 500, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %51, %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %54

38:                                               ; preds = %36
  %39 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %40 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @regmap_read(i32 %41, i32 71, i32* %11)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %117

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %29

54:                                               ; preds = %36
  %55 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %117

64:                                               ; preds = %54
  %65 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %66 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regmap_read(i32 %67, i32 70, i32* %11)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %117

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 31
  %75 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %76 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %78 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = icmp ugt i64 %80, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %83, i32 0, i32 0
  store i32 4, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i64, i64* @CMD_LNB_UPDATE_REPLY, align 8
  %87 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  store i64 %86, i64* %89, align 8
  %90 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  store i32 2, i32* %93, align 8
  %94 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %95 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %94, %struct.tda10071_cmd* %8)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %117

99:                                               ; preds = %85
  %100 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %101 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %106 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %5, align 8
  %109 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @regmap_bulk_read(i32 %102, i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %117

115:                                              ; preds = %99
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %114, %98, %71, %61, %45, %22
  %118 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %115
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
