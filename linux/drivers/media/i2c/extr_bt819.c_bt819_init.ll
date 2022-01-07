; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.bt819 = type { i32 }

@bt819_init.init = internal global [44 x i8] c"\01Y\02\00\03\12\04\16\05\E0\06\80\07\D0\08\00\09\F8\0A\00\0B0\0C\D8\0D\FE\0E\B4\0F\00\12\04\13 \14\00\16\07\18h\19]\1A\80", align 16
@timing_data = common dso_local global %struct.timing* null, align 8
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @bt819_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.bt819*, align 8
  %4 = alloca %struct.timing*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %5)
  store %struct.bt819* %6, %struct.bt819** %3, align 8
  %7 = load %struct.timing*, %struct.timing** @timing_data, align 8
  %8 = load %struct.bt819*, %struct.bt819** %3, align 8
  %9 = getelementptr inbounds %struct.bt819, %struct.bt819* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_STD_525_60, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.timing, %struct.timing* %7, i64 %16
  store %struct.timing* %17, %struct.timing** %4, align 8
  %18 = load %struct.timing*, %struct.timing** %4, align 8
  %19 = getelementptr inbounds %struct.timing, %struct.timing* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 3
  %23 = shl i32 %22, 6
  %24 = load %struct.timing*, %struct.timing** %4, align 8
  %25 = getelementptr inbounds %struct.timing, %struct.timing* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 4
  %30 = or i32 %23, %29
  %31 = load %struct.timing*, %struct.timing** %4, align 8
  %32 = getelementptr inbounds %struct.timing, %struct.timing* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 2
  %37 = or i32 %30, %36
  %38 = load %struct.timing*, %struct.timing** %4, align 8
  %39 = getelementptr inbounds %struct.timing, %struct.timing* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 3
  %43 = or i32 %37, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 5), align 1
  %45 = load %struct.timing*, %struct.timing** %4, align 8
  %46 = getelementptr inbounds %struct.timing, %struct.timing* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 7), align 1
  %50 = load %struct.timing*, %struct.timing** %4, align 8
  %51 = getelementptr inbounds %struct.timing, %struct.timing* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 9), align 1
  %55 = load %struct.timing*, %struct.timing** %4, align 8
  %56 = getelementptr inbounds %struct.timing, %struct.timing* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 11), align 1
  %60 = load %struct.timing*, %struct.timing** %4, align 8
  %61 = getelementptr inbounds %struct.timing, %struct.timing* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 13), align 1
  %65 = load %struct.timing*, %struct.timing** %4, align 8
  %66 = getelementptr inbounds %struct.timing, %struct.timing* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 15), align 1
  %70 = load %struct.timing*, %struct.timing** %4, align 8
  %71 = getelementptr inbounds %struct.timing, %struct.timing* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 17), align 1
  %75 = load %struct.bt819*, %struct.bt819** %3, align 8
  %76 = getelementptr inbounds %struct.bt819, %struct.bt819* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @V4L2_STD_625_50, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 115, i32 93
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 41), align 1
  %84 = load %struct.bt819*, %struct.bt819** %3, align 8
  %85 = call i32 @bt819_write(%struct.bt819* %84, i32 31, i32 0)
  %86 = call i32 @mdelay(i32 1)
  %87 = load %struct.bt819*, %struct.bt819** %3, align 8
  %88 = call i32 @bt819_write_block(%struct.bt819* %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @bt819_init.init, i64 0, i64 0), i32 44)
  ret i32 %88
}

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @bt819_write(%struct.bt819*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @bt819_write_block(%struct.bt819*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
