; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.ddb* }
%struct.ddb_dvb = type { i32, {}* }
%struct.ddb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }

@LNB_CMD_DISEQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @max_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.ddb_input*, align 8
  %7 = alloca %struct.ddb_port*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca %struct.ddb_dvb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.ddb_input*, %struct.ddb_input** %14, align 8
  store %struct.ddb_input* %15, %struct.ddb_input** %6, align 8
  %16 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %17 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %16, i32 0, i32 1
  %18 = load %struct.ddb_port*, %struct.ddb_port** %17, align 8
  store %struct.ddb_port* %18, %struct.ddb_port** %7, align 8
  %19 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 2
  %21 = load %struct.ddb*, %struct.ddb** %20, align 8
  store %struct.ddb* %21, %struct.ddb** %8, align 8
  %22 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %23 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %22, i32 0, i32 1
  %24 = load %struct.ddb_dvb*, %struct.ddb_dvb** %23, align 8
  %25 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %26 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %24, i64 %29
  store %struct.ddb_dvb* %30, %struct.ddb_dvb** %9, align 8
  %31 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %32 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DDB_LINK_TAG(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ddb*, %struct.ddb** %8, align 8
  %36 = getelementptr inbounds %struct.ddb, %struct.ddb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %39 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %129

51:                                               ; preds = %47
  %52 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %53 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %52, i32 0, i32 1
  %54 = bitcast {}** %53 to i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)**
  %55 = load i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)** %54, align 8
  %56 = icmp ne i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %59 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %58, i32 0, i32 1
  %60 = bitcast {}** %59 to i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)**
  %61 = load i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)** %60, align 8
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %63 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %64 = call i32 %61(%struct.dvb_frontend* %62, %struct.dvb_diseqc_master_cmd* %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.ddb*, %struct.ddb** %8, align 8
  %67 = getelementptr inbounds %struct.ddb, %struct.ddb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %70 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.ddb*, %struct.ddb** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %79 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @LNB_BUF_LEVEL(i32 %80)
  %82 = or i32 %77, %81
  %83 = call i32 @ddbwritel(%struct.ddb* %76, i32 0, i32 %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %106, %65
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.ddb*, %struct.ddb** %8, align 8
  %92 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %101 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @LNB_BUF_WRITE(i32 %102)
  %104 = or i32 %99, %103
  %105 = call i32 @ddbwritel(%struct.ddb* %91, i32 %98, i32 %104)
  br label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load %struct.ddb*, %struct.ddb** %8, align 8
  %111 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %112 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %115 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @LNB_CMD_DISEQC, align 4
  %118 = call i32 @lnb_command(%struct.ddb* %110, i64 %113, i32 %116, i32 %117)
  %119 = load %struct.ddb*, %struct.ddb** %8, align 8
  %120 = getelementptr inbounds %struct.ddb, %struct.ddb* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %123 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %109, %50
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @DDB_LINK_TAG(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @LNB_BUF_LEVEL(i32) #1

declare dso_local i32 @LNB_BUF_WRITE(i32) #1

declare dso_local i32 @lnb_command(%struct.ddb*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
