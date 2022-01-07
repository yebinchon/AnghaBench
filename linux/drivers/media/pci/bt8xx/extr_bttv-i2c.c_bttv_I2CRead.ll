; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_I2CRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_I2CRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8 }

@bttv_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%d: i2c: checking for %s @ 0x%02x... \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%d: i2c read 0x%x: error\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_I2CRead(%struct.bttv* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %9 = load %struct.bttv*, %struct.bttv** %5, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 0, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %68

14:                                               ; preds = %3
  %15 = load i64, i64* @bttv_verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* null, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.bttv*, %struct.bttv** %5, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25, i8 zeroext %26)
  br label %28

28:                                               ; preds = %20, %17, %14
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 1
  %32 = trunc i32 %31 to i8
  %33 = load %struct.bttv*, %struct.bttv** %5, align 8
  %34 = getelementptr inbounds %struct.bttv, %struct.bttv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8 %32, i8* %35, align 4
  %36 = load %struct.bttv*, %struct.bttv** %5, align 8
  %37 = getelementptr inbounds %struct.bttv, %struct.bttv* %36, i32 0, i32 2
  %38 = call i32 @i2c_master_recv(%struct.TYPE_4__* %37, i8* %8, i32 1)
  %39 = icmp ne i32 1, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* null, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* @bttv_verbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  br label %56

49:                                               ; preds = %40
  %50 = load %struct.bttv*, %struct.bttv** %5, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8, i8* %6, align 1
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8 zeroext %54)
  br label %56

56:                                               ; preds = %49, %48
  store i32 -1, i32* %4, align 4
  br label %68

57:                                               ; preds = %28
  %58 = load i64, i64* @bttv_verbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* null, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60, %57
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %56, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @pr_info(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
