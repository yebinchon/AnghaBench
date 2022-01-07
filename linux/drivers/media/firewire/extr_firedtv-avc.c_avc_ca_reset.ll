; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@SFE_VENDOR_OPCODE_HOST2CA = common dso_local global i32 0, align 4
@SFE_VENDOR_TAG_CA_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_reset(%struct.firedtv* %0) #0 {
  %2 = alloca %struct.firedtv*, align 8
  %3 = alloca %struct.avc_command_frame*, align 8
  %4 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %2, align 8
  %5 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %6 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %9, %struct.avc_command_frame** %3, align 8
  %10 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %11 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %14 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %15 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %17 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %18 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %16, %19
  %21 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %22 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %24 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %25 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %27 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %28 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %32 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %33 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %37 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %38 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @SFE_VENDOR_OPCODE_HOST2CA, align 4
  %42 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %43 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %47 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @SFE_VENDOR_TAG_CA_RESET, align 4
  %51 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %52 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %50, i32* %54, align 4
  %55 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %56 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  store i32 0, i32* %58, align 4
  %59 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %60 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  store i32 1, i32* %62, align 4
  %63 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %64 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  store i32 0, i32* %66, align 4
  %67 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %68 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %67, i32 0, i32 1
  store i32 12, i32* %68, align 4
  %69 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %70 = call i32 @avc_write(%struct.firedtv* %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %72 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
