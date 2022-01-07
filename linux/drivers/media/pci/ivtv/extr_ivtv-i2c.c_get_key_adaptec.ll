; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_get_key_adaptec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_get_key_adaptec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i8*, i64*)* @get_key_adaptec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_adaptec(%struct.IR_i2c* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [4 x i8], align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %11, align 1
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %13 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %16 = call i32 @i2c_master_send(i32 %14, i8* %15, i32 1)
  %17 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %18 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %21 = call i32 @i2c_master_recv(i32 %19, i8* %20, i32 4)
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

25:                                               ; preds = %4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %65

31:                                               ; preds = %25
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 128
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = or i32 %46, %50
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 16
  %56 = or i32 %51, %55
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 24
  %61 = or i32 %56, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %8, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i64*, i64** %9, align 8
  store i64 0, i64* %64, align 8
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %31, %30, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
