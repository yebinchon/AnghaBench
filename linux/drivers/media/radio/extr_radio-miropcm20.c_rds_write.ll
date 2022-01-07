; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_rds_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_rds_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_miro_aci = type { i32 }

@RDS_DATAMASK = common dso_local global i32 0, align 4
@RDS_CLOCKMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_miro_aci*, i32)* @rds_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_write(%struct.snd_miro_aci* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_miro_aci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.snd_miro_aci* %0, %struct.snd_miro_aci** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 7, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @RDS_DATAMASK, align 4
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 7, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* @RDS_CLOCKMASK, align 4
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 16
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %43, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.snd_miro_aci*, %struct.snd_miro_aci** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rds_rawwrite(%struct.snd_miro_aci* %37, i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %33

46:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @rds_rawwrite(%struct.snd_miro_aci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
