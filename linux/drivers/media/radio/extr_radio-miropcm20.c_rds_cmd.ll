; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_rds_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_rds_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_miro_aci = type { i32 }

@RDS_RESET = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_miro_aci*, i64, i64*, i64)* @rds_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_cmd(%struct.snd_miro_aci* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_miro_aci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_miro_aci* %0, %struct.snd_miro_aci** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @rds_write(%struct.snd_miro_aci* %12, i64 %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @RDS_RESET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

19:                                               ; preds = %4
  %20 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %6, align 8
  %21 = call i64 @rds_ack(%struct.snd_miro_aci* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %72

30:                                               ; preds = %26
  %31 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %6, align 8
  %32 = call i64 @rds_waitread(%struct.snd_miro_aci* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %72

35:                                               ; preds = %30
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memset(i64* %36, i32 0, i64 %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %68, %35
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = mul nsw i64 8, %42
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %6, align 8
  %47 = call i32 @rds_readcycle_nowait(%struct.snd_miro_aci* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %72

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @RDS_DATA(i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = srem i32 %56, 8
  %58 = sub nsw i32 7, %57
  %59 = shl i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %60
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %39

71:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %50, %34, %29, %23, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @rds_write(%struct.snd_miro_aci*, i64) #1

declare dso_local i64 @rds_ack(%struct.snd_miro_aci*) #1

declare dso_local i64 @rds_waitread(%struct.snd_miro_aci*) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @rds_readcycle_nowait(%struct.snd_miro_aci*) #1

declare dso_local i32 @RDS_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
