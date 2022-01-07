; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_ca_get_ca_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_ca_get_ca_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32* }

@ca_get_ca_info.slot_command = internal global [8 x i32] [i32 7, i32 64, i32 0, i32 0, i32 2, i32 0, i32 0, i32 255], align 16
@GET_REPLY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" -->dst_put_ci FAILED !\00", align 1
@EIO = common dso_local global i32 0, align 4
@DST_CA_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" -->dst_put_ci SUCCESS !\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" DST data = [\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid number of ids (>100). Recovering.\00", align 1
@CA_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c" CA_INFO = [\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" 0x%02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @ca_get_ca_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca_get_ca_info(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  store i32 8, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 7, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), align 16
  %12 = call i32 @put_checksum(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), i32 %11)
  %13 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @GET_REPLY, align 4
  %18 = call i64 @dst_put_ci(%struct.dst_state* %13, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), i32 32, i32* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @verbose, align 4
  %22 = load i32, i32* @DST_CA_ERROR, align 4
  %23 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %148

26:                                               ; preds = %1
  %27 = load i32, i32* @verbose, align 4
  %28 = load i32, i32* @DST_CA_INFO, align 4
  %29 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %27, i32 %28, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @verbose, align 4
  %31 = load i32, i32* @DST_CA_INFO, align 4
  %32 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %30, i32 %31, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %53, %26
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %36 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp slt i32 %34, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load i32, i32* @verbose, align 4
  %44 = load i32, i32* @DST_CA_INFO, align 4
  %45 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %46 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %43, i32 %44, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load i32, i32* @verbose, align 4
  %58 = load i32, i32* @DST_CA_INFO, align 4
  %59 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %57, i32 %58, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %61 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 100
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  store i32 100, i32* %7, align 4
  %68 = load i32, i32* @verbose, align 4
  %69 = load i32, i32* @DST_CA_ERROR, align 4
  %70 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %68, i32 %69, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %56
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* @CA_INFO, align 4
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 2
  %79 = call i32 @put_command_and_length(i32* %75, i32 %76, i32 %78)
  %80 = load i32, i32* @verbose, align 4
  %81 = load i32, i32* @DST_CA_INFO, align 4
  %82 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %80, i32 %81, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 8, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %141, %71
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %144

87:                                               ; preds = %83
  %88 = load i32, i32* @verbose, align 4
  %89 = load i32, i32* @DST_CA_INFO, align 4
  %90 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %91 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 0
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %99 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %88, i32 %89, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %97, i32 %105)
  %107 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %108 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 0
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %116 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 0
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %123 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %131 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %129, i32* %136, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %87
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %83

144:                                              ; preds = %83
  %145 = load i32, i32* @verbose, align 4
  %146 = load i32, i32* @DST_CA_INFO, align 4
  %147 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %145, i32 %146, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %20
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @put_checksum(i32*, i32) #1

declare dso_local i64 @dst_put_ci(%struct.dst_state*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @put_command_and_length(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
