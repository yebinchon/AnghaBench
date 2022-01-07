; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SAA7134_BOARD_MD7134 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s: Huh, no eeprom present (err=%d)?\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: i2c eeprom read error (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"i2c eeprom %02x: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i8*, i32)* @saa7134_i2c_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_i2c_eeprom(%struct.saa7134_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SAA7134_BOARD_MD7134, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %19 = call i32 @saa7134_i2c_eeprom_md7134_gate(%struct.saa7134_dev* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 80, i32* %23, align 4
  store i8 0, i8* %8, align 1
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 2
  %26 = call i32 @i2c_master_send(%struct.TYPE_3__* %25, i8* %8, i32 1)
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 1, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i32 -1, i32* %4, align 4
  br label %76

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 2
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @i2c_master_recv(%struct.TYPE_3__* %37, i8* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  store i32 -1, i32* %4, align 4
  br label %76

48:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sgt i32 %56, 16
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i32 [ 16, %58 ], [ %62, %59 ]
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i8* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 16
  store i32 %74, i32* %9, align 4
  br label %49

75:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %42, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @saa7134_i2c_eeprom_md7134_gate(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
