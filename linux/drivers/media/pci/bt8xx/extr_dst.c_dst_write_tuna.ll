; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_write_tuna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_write_tuna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i64, i32, i32, i8**, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"type_flags 0x%x\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@HAS_POWER = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"DST Communication initialization failed.\0A\00", align 1
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@FIXED_COMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"write not successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"DST PIO disable failed !\0A\00", align 1
@GET_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"read verify not successful.\0A\00", align 1
@ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"write not acknowledged 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dst_write_tuna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_write_tuna(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  store %struct.dst_state* %9, %struct.dst_state** %4, align 8
  %10 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %11 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %23 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %29 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HAS_POWER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %37 = call i32 @dst_set_voltage(%struct.dvb_frontend* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* @HAS_LOCK, align 4
  %41 = load i32, i32* @ATTEMPT_TUNE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %45 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %49 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %48, i32 0, i32 3
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %52 = call i64 @dst_comm_init(%struct.dst_state* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %143

56:                                               ; preds = %39
  %57 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %58 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %59, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %66 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %64
  %71 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %72 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %71, i32 0, i32 4
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = call i8* @dst_check_sum(i8** %74, i32 9)
  %76 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %77 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 9
  store i8* %75, i8** %79, align 8
  %80 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %81 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %82 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %81, i32 0, i32 4
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = call i32 @write_dst(%struct.dst_state* %80, i8** %84, i32 10)
  store i32 %85, i32* %5, align 4
  br label %103

86:                                               ; preds = %64, %56
  %87 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %88 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %87, i32 0, i32 4
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = call i8* @dst_check_sum(i8** %90, i32 7)
  %92 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %93 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %92, i32 0, i32 4
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 9
  store i8* %91, i8** %95, align 8
  %96 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %97 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %98 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %97, i32 0, i32 4
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i32, i32* @FIXED_COMM, align 4
  %102 = call i32 @write_dst(%struct.dst_state* %96, i8** %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %86, %70
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %108 = call i64 @dst_pio_disable(%struct.dst_state* %107)
  %109 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %138

110:                                              ; preds = %103
  %111 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %112 = call i64 @dst_pio_disable(%struct.dst_state* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %143

116:                                              ; preds = %110
  %117 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %118 = load i32, i32* @GET_ACK, align 4
  %119 = call i64 @read_dst(%struct.dst_state* %117, i64* %6, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %143

123:                                              ; preds = %116
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @ACK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %6, align 8
  %129 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  br label %143

130:                                              ; preds = %123
  %131 = load i32, i32* @ATTEMPT_TUNE, align 4
  %132 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %133 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %137 = call i32 @dst_get_tuna(%struct.dst_state* %136)
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %130, %106
  %139 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %140 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %139, i32 0, i32 3
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %149

143:                                              ; preds = %127, %121, %114, %54
  %144 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %145 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %144, i32 0, i32 3
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %138
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @dst_set_voltage(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i8* @dst_check_sum(i8**, i32) #1

declare dso_local i32 @write_dst(%struct.dst_state*, i8**, i32) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i64*, i32) #1

declare dso_local i32 @dst_get_tuna(%struct.dst_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
