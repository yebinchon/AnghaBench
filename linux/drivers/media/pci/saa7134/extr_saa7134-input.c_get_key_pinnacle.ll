; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_pinnacle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_pinnacle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Pinnacle PCTV key %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i64*, i32, i32, i32)* @get_key_pinnacle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pinnacle(%struct.IR_i2c* %0, i32* %1, i32* %2, i64* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.IR_i2c*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %22 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %25 = call i32 @i2c_master_recv(i32 %23, i8* %24, i32 4)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %38

28:                                               ; preds = %7
  %29 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %30 = call i32 (%struct.IR_i2c*, i8*, ...) @ir_dbg(%struct.IR_i2c* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %8, align 4
  br label %108

35:                                               ; preds = %28
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %108

38:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %18, align 4
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i8* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32, i32* %18, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %53, %54
  %56 = add i32 %55, 1
  %57 = urem i32 %56, 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %62, %63
  %65 = urem i32 %64, 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %52, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %18, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %108

78:                                               ; preds = %74
  %79 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %80 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %108

85:                                               ; preds = %78
  %86 = load i32, i32* %19, align 4
  %87 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %88 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 254
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* %20, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  br label %108

96:                                               ; preds = %91, %85
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %20, align 4
  %99 = urem i32 %98, %97
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i64*, i64** %12, align 8
  store i64 0, i64* %104, align 8
  %105 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %106 = load i32, i32* %20, align 4
  %107 = call i32 (%struct.IR_i2c*, i8*, ...) @ir_dbg(%struct.IR_i2c* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 1, i32* %8, align 4
  br label %108

108:                                              ; preds = %96, %95, %84, %77, %35, %33
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @ir_dbg(%struct.IR_i2c*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
