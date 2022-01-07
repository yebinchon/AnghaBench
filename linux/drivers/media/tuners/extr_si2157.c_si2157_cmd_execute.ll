; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.si2157_cmd = type { i32, i32*, i32 }
%struct.si2157_dev = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cmd execution took %d ms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.si2157_cmd*)* @si2157_cmd_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2157_cmd_execute(%struct.i2c_client* %0, %struct.si2157_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.si2157_cmd*, align 8
  %6 = alloca %struct.si2157_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.si2157_cmd* %1, %struct.si2157_cmd** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.si2157_dev* %10, %struct.si2157_dev** %6, align 8
  %11 = load %struct.si2157_dev*, %struct.si2157_dev** %6, align 8
  %12 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i2c_master_send(%struct.i2c_client* %19, i32* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %115

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %115

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %41
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 80)
  %49 = add i64 %47, %48
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %88, %46
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @time_after(i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @i2c_master_recv(%struct.i2c_client* %57, i32* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %115

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EREMOTEIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %115

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 7
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %89

88:                                               ; preds = %78
  br label %50

89:                                               ; preds = %87, %50
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i64, i64* @jiffies, align 8
  %93 = call i32 @jiffies_to_msecs(i64 %92)
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @jiffies_to_msecs(i64 %94)
  %96 = sub nsw i32 %95, 80
  %97 = sub nsw i32 %93, %96
  %98 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.si2157_cmd*, %struct.si2157_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 7
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %89
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %115

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %41
  %112 = load %struct.si2157_dev*, %struct.si2157_dev** %6, align 8
  %113 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  store i32 0, i32* %3, align 4
  br label %124

115:                                              ; preds = %107, %74, %67, %36, %29
  %116 = load %struct.si2157_dev*, %struct.si2157_dev** %6, align 8
  %117 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dev_dbg(i32* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %115, %111
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
